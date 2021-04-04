var utils = require("minilogueXD_utils");
var randomInt = utils.randomInt;
var lsbCC = utils.lsbCC;

var cctls = [
	//{ name: "PORTAMENTO", cc: 5, min: 0, max: 127 },
	{ name: "AMP EG ATTACK", cc: 16, min: 0, max: 127 },
	{ name: "AMP EG DECAY", cc: 17, min: 0, max: 127 },
	{ name: "AMP EG SUSTAIN", cc: 18, min: 0, max: 127 },
	{ name: "AMP EG RELEASE", cc: 19, min: 0, max: 127 },
	{ name: "EG ATTACK", cc: 20, min: 0, max: 127 },
	{ name: "EG DECAY", cc: 21, min: 0, max: 127 },
	{ name: "EG SUSTAIN", cc: 22, min: 0, max: 127 },
	{ name: "EG RELEASE", cc: 23, min: 0, max: 127 },
	{ name: "LFO RATE", cc: 24, min: 0, max: 127 },
	{ name: "LFO INT", cc: 26, min: 0, max: 127 },
	{ name: "VOICE MODE DEPTH", cc: 27, min: 0, max: 127 },
	{ name: "DELAY HI PASS CUTOFF", cc: 29, min: 0, max: 127 },
	{ name: "DELAY TIME", cc: 30, min: 0, max: 127 },
	{ name: "DELAY FEEDBACK", cc: 31, min: 0, max: 127 },
	{ name: "NOISE LEVEL", cc: 33, min: 0, max: 127 },
	{ name: "VCO 1 PITCH", cc: 34, min: 0, max: 127 },
	{ name: "VCO 2 PITCH", cc: 35, min: 0, max: 127 },
	{ name: "VCO 1 SHAPE", cc: 36, min: 0, max: 127 },
	{ name: "VCO 2 SHAPE", cc: 37, min: 0, max: 127 },
	{ name: "VCO 1 LEVEL", cc: 39, min: 0, max: 127 },
	{ name: "VCO 2 LEVEL", cc: 40, min: 0, max: 127 },
	{ name: "VCO 2 CROSS MOD DEPTH", cc: 41, min: 0, max: 127 },
	{ name: "VCO 2 PITCH EG INT", cc: 42, min: 0, max: 127 },
	{ name: "CUTOFF", cc: 43, min: 0, max: 127 },
	{ name: "RESONANCE", cc: 44, min: 0, max: 127 },
	{ name: "CUTOFF EG INT", cc: 45, min: 0, max: 127 },
	{ name: "VCO 1 OCTAVE", cc: 48, min: 0, max: 127, enum: [ "16'", "8'", "4'", "2'" ] },
	{ name: "VCO 2 OCTAVE", cc: 49, min: 0, max: 127, enum: [ "16'", "8'", "4'", "2'" ] },
	{ name: "VCO 1 WAVE", cc: 50, min: 0, max: 127, enum: [ "SQR", "TRI", "SAW" ] },
	{ name: "VCO 2 WAVE", cc: 51, min: 0, max: 127, enum: [ "SQR", "TRI", "SAW" ] },
	{ name: "LFO TARGET", cc: 56, min: 0, max: 127, enum: [ "CUTOFF", "SHAPE", "PITCH" ] },
	{ name: "LFO EG", cc: 57, min: 0, max: 127, enum: [ "OFF", "RATE", "INT" ] },
	{ name: "LFO WAVE", cc: 58, min: 0, max: 127, enum: [ "SQR", "TRI", "SAW" ] },
	{ name: "SYNC", cc: 80, min: 0, max: 127, enum: [ "OFF", "ON" ] },
	{ name: "RING", cc: 81, min: 0, max: 127, enum: [ "OFF", "ON" ] },
	{ name: "CUTOFF VELOCITY", cc: 82, min: 0, max: 127, enum: [ "0%", "50%", "100%" ] },
	{ name: "CUTOFF KEYTRACK", cc: 83, min: 0, max: 127, enum: [ "0%", "50%", "100%" ] },
	{ name: "CUTOFF TYPE", cc: 84, min: 0, max: 127, enum: [ "2 POLE", "4 POLE" ] },
	{ name: "DELAY OUTPUT ROUTING", cc: 88, min: 0, max: 127, enum: [ "BYPASS", "POST HPF", "PRE HPF" ] }
];

function findName(name) {
	for (var c in cctls) {
		if (cctls[c].name === name) {
			return cctls[c];
		}
	}
	return null;
}

function findIndex(index) {
	for (var c in cctls) {
		if (cctls[c].cc === index) {
			return cctls[c];
		}
	}
	return null;
}

function postProcess() {
	for (var c in cctls) {
		var cc = cctls[c];

		cc.isEnum = function() {
			return (this.enum || this.enumFn) ? true : false;
		}
		if (cc.isEnum()) {
			cc.getEnum = function() {
				var e = this.enumFn ? this.enumFn() : this.enum;
				return e;
			}
			cc.getEnumIndex = function() {
				var e = this.getEnum();
				if (e.length) {
					var range = (this.max - this.min) + 1;
					var idx = Math.floor(e.length * (this.value / range));
					return idx;
				}
				return -1;
			};
			cc.getEnumString = function() {
				var idx = this.getEnumIndex();
				if (idx >= 0) {
					var e = this.getEnum();
					return e[idx];
				}
				return "";
			};
		}
		cc.getOutput = function() {
			if (this.max < 128) { // 7-bit value
				return { cc: [ [ this.cc, this.value & 0x7F ] ] };
			}
			else { // 10-bit value, first send out the lower 3 bits on CC#63, followed by the upper 7 bits
				return { cc: [ [ lsbCC, this.value & 0x7 ], 
							[ this.cc, (this.value >> 3) & 0x7F ] ] };
			}
		}
		cc.setValueFromView = utils.setValueFromView;
		cc.getValueForView = utils.getValueForView;
	}
}

function generateRandomValues() {
	var params = [];
	for (var c in cctls) {
		var cc = cctls[c];
		if (cc.randomize === false) continue;
		cc.value = randomInt(cc.min, cc.randomMax ? cc.randomMax : cc.max); // random value for testing
		params.push(cc);
		// post(cc.name + ": " + cc.value + (cc.getEnum() ? " (" + cc.getEnumString() + ")" : "") + "\n");
	}
	return params;
}

function getInterfaceParams() {
	var params = [];
	for (var c in cctls) {
		var cc = cctls[c];
		if (cc.randomize === false && cc.interface !== true) continue;
		if (!cc.name) {
			post(c + ": " + JSON.stringify(cc) + "\n");
		}
		params.push(cc);
	}
	return params;
}

exports.init = postProcess;
exports.generateRandomValues = generateRandomValues;
exports.findName = findName;
exports.findIndex = findIndex;
exports.getInterfaceParams = getInterfaceParams;
