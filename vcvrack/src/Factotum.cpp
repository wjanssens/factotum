#include "plugin.hpp"


struct Factotum : Module {
	float phase = 0.f;
	float blinkPhase = 0.f;

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
		SCL_INPUT,
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

	Tutorial() {
		config(NUM_PARAMS, NUM_INPUTS, NUM_OUTPUTS, NUM_LIGHTS);
		configParam(PITCH_PARAM, 0.f, 1.f, 0.f, "");

		configParam(FRQ_PARAM, 0.0, 1.0, 0.0, "Frequency");
		configParam(SEL_PARAM, 0.0, 1.0, 0.0, "Mode Select");
		configParam(SCL_PARAM, 0.0, 1.0, 0.0, "Scale");
		configParam(OFF_PARAM, 0.0, 1.0, 0.5, "Offset");
		configParam(MODE_PARAM, 0.0, 1.0, 0.0, "Model");
	}

	void process(const ProcessArgs& args) override {

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
};


struct TutorialWidget : ModuleWidget {
	TutorialWidget(Tutorial* module) {
		setModule(module);
		setPanel(APP->window->loadSvg(asset::plugin(pluginInstance, "res/Factotum.svg")));

		addChild(createWidget<ScrewSilver>(Vec(RACK_GRID_WIDTH, 0)));
		addChild(createWidget<ScrewSilver>(Vec(box.size.x - 2 * RACK_GRID_WIDTH, 0)));
		addChild(createWidget<ScrewSilver>(Vec(RACK_GRID_WIDTH, RACK_GRID_HEIGHT - RACK_GRID_WIDTH)));
		addChild(createWidget<ScrewSilver>(Vec(box.size.x - 2 * RACK_GRID_WIDTH, RACK_GRID_HEIGHT - RACK_GRID_WIDTH)));

		addParam(createParamCentered<Rogan3PSWhite>(mm2px(Vec(6.160, 11.769)), module, Factotum::FRQ_PARAM));
		addParam(createParamCentered<Rogan3PSWhite>(mm2px(Vec(36.640, 11.769)), module, Factotum::SEL_PARAM));
		addParam(createParamCentered<Rogan3PSWhite>(mm2px(Vec(6.160, 42.249)), module, Factotum::OFF_PARAM));
		addParam(createParamCentered<Rogan3PSWhite>(mm2px(Vec(36.640, 42.249)), module, Factotum::SCL_PARAM));
		addParam(createParamCentered<TL1105>(mm2px(Vec(23.800, 84.760)), module, Factotum::MODE_PARAM));

		addInput(createInputCentered<PJ301MPort>(mm2px(Vec(6.160, 112.840)), module, Factotum::VOCT_INPUT));
		addInput(createInputCentered<PJ301MPort>(mm2px(Vec(21.400, 112.840)), module, Factotum::CLK_INPUT));
		addInput(createInputCentered<PJ301MPort>(mm2px(Vec(112.840, 112.840)), module, Factotum::SCL_INPUT));

		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(6.160, 67.120)), module, Factotum::A_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(21.400, 67.120)), module, Factotum::B_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(36.640, 67.120)), module, Factotum::C_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(36.640, 82.360)), module, Factotum::D_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(36.640, 97.600)), module, Factotum::E_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(21.400, 97.600)), module, Factotum::F_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(6.160, 97.600)), module, Factotum::G_OUTPUT));
		addOutput(createOutputCentered<PJ301MPort>(mm2px(Vec(6.160, 82.360)), module, Factotum::H_OUTPUT));

		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(18.820, 23.900)), module, Tutorial::A_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(23.900, 21.890)), module, Tutorial::B_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(28.980, 23.900)), module, Tutorial::C_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(30.990, 28.980)), module, Tutorial::D_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(28.980, 34.060)), module, Tutorial::E_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(23.900, 36.070)), module, Tutorial::F_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(18.820, 34.060)), module, Tutorial::G_LIGHT));
		addChild(createLightCentered<MediumLight<RedGreenLight>>(mm2px(Vec(16.820, 28.980)), module, Tutorial::H_LIGHT));
	}
};


Model* modelFactotum = createModel<Factotum, FactotumWidget>("Factotum");