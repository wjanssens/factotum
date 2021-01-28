#include "plugin.hpp"

#define _BV(bit)	(1 << (bit))
#define _is_set(v, bit)	(((v) >> (bit)) & 1)

static const float quantized = {
	0.0000f, // C
	0.0833f  // C#/Db
	0.1667f, // D
	0.2500f, // D#/Eb
	0.3333f, // E
	0.4167f, // F
	0.5000f, // F#/Gb
	0.5833f, // G
	0.6667f, // G#/Ab
	0.7500f, // A
	0.8333f, // A#/Bb
	0.9167f  // B 
};

static const int[7][7] modes = {
	{ 1,1,1,1,1,1,1 }, // chromatic
	{ 2,2,1,2,2,2,1 }, // ionian
	{ 2,1,2,2,2,1,2 }, // dorian
	{ 1,2,2,2,1,2,2 }, // phrygian
	{ 2,2,2,1,2,2,1 }, // lydian
	{ 2,2,1,2,2,1,2 }, // mixolydian
	{ 2,1,2,2,1,2,2 }, // aeolian
	{ 1,2,2,1,2,2,2 }  // locrian
};

struct Factotum : Module {
	float phase = 0.f;
	float blinkPhase = 0.f;
	int sr = 0;
	int i = 0;

	enum ParamIds {
		FRQ_PARAM,
		SEL_PARAM,
		SCL_PARAM,
		OFF_PARAM,
		MOD_PARAM,
		NUM_PARAMS
	};
	enum InputIds {
		VOCT_INPUT,
		CLK_INPUT,
		RST_INPUT,
		NUM_INPUTS
	};
	enum OutputIds {
		A_OUTPUT,
		B_OUTPUT,
		C_OUTPUT,
		D_OUTPUT,
		E_OUTPUT,
		F_OUTPUT,
		G_OUTPUT,
		H_OUTPUT,
		NUM_OUTPUTS
	};
	enum LightIds {
		A_LIGHT,
		B_LIGHT,
		C_LIGHT,
		D_LIGHT,
		E_LIGHT,
		F_LIGHT,
		G_LIGHT,
		H_LIGHT,
		NUM_LIGHTS
	};

	// state
	int mode;
	int reg;
	int trig;
	unsigned int sr; // shift register
	float out[8];
	dsp::BooleanTrigger modeTrigger;

	enum ModeIds {
		TURING,
		LFO,
		RANDOM,
		ARP,
		QUANTIZER
		CLOCK,
		SHIFT,
		NUM_MODES
	};

	Factotum() {
		config(NUM_PARAMS, NUM_INPUTS, NUM_OUTPUTS, NUM_LIGHTS);
		configParam(FRQ_PARAM, 0.0, 12.0, 0.0, "Frequency");
		configParam(SEL_PARAM, 0.0, 8.0, 0.0, "Select");
		configParam(SCL_PARAM, 0.0, 10.0, 0.0, "Scale");
		configParam(OFF_PARAM, -5.0, 5.0, 0.0, "Offset");
		configParam(MODE_PARAM, 0.0, 1.0, 0.0, "Mode");
	}

	json_t *dataToJson() override {
		json_t * root = json_object();
		json_object_set_new(root, "mode", json_integer(mode));
		return root;
	}

	void dataFromJson(json_t *root) {
		json_t *modeValue = json_object_get(root, "mode");
		if (modeValue) {
			mode = json_integer_value(modeValue);
		}
	}

	/* input is between -1.0 and +1.0
	 * output is 10.0 pp between -10.0 and +10.0
	 */
	float scaleAndOffset(float value) {
		clamp(value, -1.f, 1.f)
		float scl = params[SCL_PARAM].getValue();
		float off = params[OFF_PARAM].getValue();
		return (value * scl) + off;
	}
	int selRange() {
		// sel param divided into 8 segments
		float sel = params[SEL_PARAM].getValue();
		int i = 0;
		while (i < 8.0) {
			if (i < sel) {
				return i;
			}
		}
		return i;
	}
	int frqRange() {
		// frq param divided into 12 segments
		float frq = params[FRQ_PARAM].getValue();
		int i = 0;
		while (i < 12.0) {
			if (i < frq) {
				return i;
			}
		}
		return i;
	}

	void mode() {
		if (modeTrigger.process(params[MODE_PARAM].getValue() > 0.f)) {
			mode = (mode + 1) % 8;
		}
	}

	void process(const ProcessArgs& args) override {
		mode();

		float voct = inputs[VOCT_INPUT].getVoltage();
		float clock = inputs[CLK_INPUT].getVoltage();
		float reset = inputs[RST_INPUT].getVoltage();

		if (mode == ModeIds.TURING) {
			// Tuning Machine
			if (clock > 0.f) {

				float rnd = rescale(params[FRQ_PARAM].getValue(), 0.f, 12.f, 0.f, 1.f);
				int sel = selRange();

				if (trig == 0) {
					trig = 1;

					sr >> 1;
					int bit = 0;
					switch (selRange()) {
						case 0: // 2
							bit = 29;
						case 1: // 3
							bit = 28;
						case 2: // 4
							bit = 27;
						case 3: // 5
							bit = 26;
						case 4: // 6
							bit = 25;
						case 5: // 8
							bit = 23;
						case 6: // 12
							bit = 19;
						default: // 16
							bit = 15;
					}
					if (sr >> bit) {
						sr |= 0x8000000;
					}
					if (uniform() > rnd) {
						sr ^= 0x8000000;
					}

					out = rescale((float) sr >> 24, 0.f, 1.f, -1.f, 1.f);
					outputs[A_OUTPUT].setVoltage(scaleAndOffset(out));

					int a = (sr >> 31);
					int b = (sr >> 30);
					int c = (sr >> 29);
					int d = (sr >> 28);
					int e = (sr >> 27);
					int f = (sr >> 26);
					int g = (sr >> 25);
					int h = (sr >> 24);

					outputs[B_OUTPUT].setVoltage(a ? 10.f : 0.f);
					outputs[C_OUTPUT].setVoltage(b ? 10.f : 0.f);
					outputs[D_OUTPUT].setVoltage(d ? 10.f : 0.f);
					outputs[E_OUTPUT].setVoltage(a & b ? 10.f : 0.f);
					outputs[F_OUTPUT].setVoltage(a & d ? 10.f : 0.f);
					outputs[G_OUTPUT].setVoltage(d & g ? 10.f : 0.f);
					outputs[H_OUTPUT].setVoltage(a & b &d & g ? 10.f : 0.f);

					lights[A_LIGHT].setBrightness(a ? 1.f : 0.f);
					lights[B_LIGHT].setBrightness(b ? 1.f : 0.f);
					lights[C_LIGHT].setBrightness(c ? 1.f : 0.f);
					lights[D_LIGHT].setBrightness(d ? 1.f : 0.f);
					lights[E_LIGHT].setBrightness(e ? 1.f : 0.f);
					lights[F_LIGHT].setBrightness(f ? 1.f : 0.f);
					lights[G_LIGHT].setBrightness(g ? 1.f : 0.f);
					lights[H_LIGHT].setBrightness(h ? 1.f : 0.f);
				}
			} else {
				 trig = 0;
			}

		} else if (mode == ModeIds.QUANTIZER) {
			float clk = inputs[CLK_INPUT].getVoltage();

			if (trig == 0 && clk > 1.f) {
				trig = 1;

				int[] mode = modes[selRange()];
				float frq = params[FRQ_PARAM];
				float scl = params[SCL_PARAM];
				float off = params[OFF_PARAM];

				float a = inputs[VOCT_INPUT].getVoltage();
				float c = scaleAndOffset(a);
				float e = inputs[RST_INPUT].getVoltage();
				float g = scaleAndOffset(e);

				float y = getNearestElement(quantized, 12, frq);
				y -= 10.f;
				// 240 steps for chromatic, otherwise 140 steps
				while (y >= -10.f && y < +10.f) {
					float x = y;
					for (int i = 0; i < 7; i++) {
						y += ((float) mode[i]) / 12.f;
						if (x < a && a < y) {
							outputs[A_OUTPUT] = getNearest(x, y, a);
						}
						if (x < c && c < y) {
							outputs[C_OUTPUT] = getNearest(x, y, c);
						}
						if (x < e && e < y) {
							outputs[E_OUTPUT] = getNearest(x, y, e);
						}
						if (x < g && g < y) {
							outputs[G_OUTPUT] = getNearest(x, y, g);
						}
					}
				}
			} else if (trig == 1 && clk < 1.f) {
				trig = 0;
			}
		} else if (mode === ModeIds.SHIFT) {
			float frq = 0.f;
			if (inputs[CLK_INPUT].isConnected()) {

			} else {
				frq = math::rescale(inputs[FRQ_PARAM], 
				-1.f, 1.f, 20.0, 240);
			}

			int rand = params[SCL_PARAM];
			int type = selRange();
			if (type == 0) {
				// shift register
				if (inputs[VOCT_INPUT].isConnected()
					&& inputs[RST_INPUT].isConnected()) {
						// two 4-bit shift registers
				} else {
					
				}
				sr >> 1;
			} else if (type > 0 && type < 6) {
				if (i > 255) {
					i = 0;
				}
				if (type == 1) {
					// reflected gray code
					sr = reflected_gray[i++];
				} else if (type == 2) {
					// balanced gray code
					sr = balanced_gray[i++];
				} else if (type == 3) {
					// left fibonacci LFSR
					uint16_t lsb = sr & 1;
					sr >>= 1;
					if (lsb) {
						sr ^= 0xB400;
					}
				} else if (type == 4) {
					// right fibonacci LFSR
					uint16_t msb = (uint16_t) sr < 0;
					lfsr <<= 1;
					if (msb) {
						sr ^= 0x002D; 
					}
				} else {
					// 
				}
			} else if (type > 5) {
				// counters
			}
			outputs[OUTPUT_A].setVoltage(_is_set(sr, 7) ? 10.f : 0.f);
			outputs[OUTPUT_B].setVoltage(_is_set(sr, 6) ? 10.f : 0.f);
			outputs[OUTPUT_C].setVoltage(_is_set(sr, 5) ? 10.f : 0.f);
			outputs[OUTPUT_D].setVoltage(_is_set(sr, 4) ? 10.f : 0.f);
			outputs[OUTPUT_E].setVoltage(_is_set(sr, 3) ? 10.f : 0.f);
			outputs[OUTPUT_F].setVoltage(_is_set(sr, 2) ? 10.f : 0.f);
			outputs[OUTPUT_G].setVoltage(_is_set(sr, 1) ? 10.f : 0.f);
			outputs[OUTPUT_H].setVoltage(_is_set(sr, 0) ? 10.f : 0.f);
		}
		
		// Tutorial code
		// // Compute the frequency from the pitch parameter and input
		// float pitch = params[PITCH_PARAM].getValue();
		// pitch += inputs[PITCH_INPUT].getVoltage();
		// pitch = clamp(pitch, -4.f, 4.f);
		// // The default pitch is C4 = 261.6256f
		// float freq = dsp::FREQ_C4 * std::pow(2.f, pitch);

		// // Accumulate the phase
		// phase += freq * args.sampleTime;
		// if (phase >= 0.5f) {
		// 	phase -= 1.f;
		// }

		// // Compute the sine output
		// float sine = std::sin(2.f * M_PI * phase);
		// // Audio signals are typically +/-5V
		// // https://vcvrack.com/manual/VoltageStandards.html
		// outputs[SINE_OUTPUT].setVoltage(5.f * sine);

		// // Blink light at 1Hz
		// blinkPhase += args.sampleTime;
		// if (blinkPhase >= 1.f) {
		// 	blinkPhase -= 1.f;
		// }
		// lights[BLINK_LIGHT].setBrightness(blinkPhase < 0.5f ? 1.f : 0.f);
	}



	float getNearest(float x, float y, float target) {
    	return (target - x >= y - target) ? y : x;
	}

	float getNearestElement(float arr[], int n, float target) {
		if (target <= arr[0]) {
			return arr[0];
		}
		if (target >= arr[n - 1]) {
			return arr[n - 1];
		}
		float left = 0, right = n, mid = 0;
		while (left < right) {
			mid = (left + right) / 2;
			if (arr[mid] == target) {
				return arr[mid];
			}
			if (target < arr[mid]) {
				if (mid > 0 && target > arr[mid - 1]) {
					return getNearest(arr[mid - 1], arr[mid], target);
				}
				right = mid;
			} else {
				if (mid < n - 1 && target < arr[mid + 1]) {
					return getNearest(arr[mid], arr[mid + 1], target);
				}
				left = mid + 1;
			}
		}
		return arr[mid];
	}
};


struct FactotumWidget : ModuleWidget {
	FactotumWidget(Tutorial* module) {
		setModule(module);
		setPanel(APP->window->loadSvg(asset::plugin(pluginInstance, "res/Factotum.svg")));

		addChild(createWidget<ScrewSilver>(Vec(RACK_GRID_WIDTH, 0)));
		addChild(createWidget<ScrewSilver>(Vec(box.size.x - 2 * RACK_GRID_WIDTH, 0)));
		addChild(createWidget<ScrewSilver>(Vec(RACK_GRID_WIDTH, RACK_GRID_HEIGHT - RACK_GRID_WIDTH)));
		addChild(createWidget<ScrewSilver>(Vec(box.size.x - 2 * RACK_GRID_WIDTH, RACK_GRID_HEIGHT - RACK_GRID_WIDTH)));

		addParam(createParamCentered<Rogan3PSWhite>(mm2px(Vec(10.2, 25.4)), module, Factotum::FRQ_PARAM));
		addParam(createParamCentered<Rogan3PSWhite>(mm2px(Vec(40.6, 25.4)), module, Factotum::SEL_PARAM));
		addParam(createParamCentered<Rogan3PSWhite>(mm2px(Vec(10.2, 48.3)), module, Factotum::OFF_PARAM));
		addParam(createParamCentered<Rogan3PSWhite>(mm2px(Vec(40.6, 48.3)), module, Factotum::SCL_PARAM));
		addParam(createParamCentered<TL1105>(mm2px(Vec(25.4, 81.3)), module, Factotum::MODE_PARAM));

		addInput(createInputCentered<PJ301MPort>(mm2px(Vec(10.2, 111.7)), module, Factotum::VOCT_INPUT));
		addInput(createInputCentered<PJ301MPort>(mm2px(Vec(25.4, 111.7)), module, Factotum::CLK_INPUT));
		addInput(createInputCentered<PJ301MPort>(mm2px(Vec(40.6, 111.7)), module, Factotum::RST_INPUT));

		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(10.2, 66.1)), module, Factotum::A_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(25.4, 66.1)), module, Factotum::B_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(40.6, 66.1)), module, Factotum::C_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(40.6, 81.3)), module, Factotum::D_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(40.6, 96.6)), module, Factotum::E_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(25.4, 96.6)), module, Factotum::F_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(10.2, 96.6)), module, Factotum::G_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(10.2, 81.3)), module, Factotum::H_OUTPUT));

		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(20.3, 31.7)), module, Tutorial::A_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(25.4, 29.7)), module, Tutorial::B_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(30.5, 31.7)), module, Tutorial::C_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(32.5, 36.8)), module, Tutorial::D_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(30.5, 41.9)), module, Tutorial::E_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(25.4, 40.0)), module, Tutorial::F_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(20.3, 41.9)), module, Tutorial::G_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(18.3, 36.8)), module, Tutorial::H_LIGHT));
	}
};


Model* modelFactotum = createModel<Factotum, FactotumWidget>("Factotum");