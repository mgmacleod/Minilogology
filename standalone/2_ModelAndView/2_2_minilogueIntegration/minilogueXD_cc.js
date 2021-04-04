var utils = require("minilogueXD_utils");
var randomInt = utils.randomInt;
var lsbCC = utils.lsbCC;

var cctls = [
	{ name: "PORTAMENTO", cc: 5, min: 0, max: 127 },
	{ name: "AMP EG ATTACK", cc: 16, min: 0, max: 1023 },
	{ name: "AMP EG DECAY", cc: 17, min: 0, max: 1023 },
	{ name: "AMP EG SUSTAIN", cc: 18, min: 0, max: 1023 },
	{ name: "AMP EG RELEASE", cc: 19, min: 0, max: 1023 },
	{ name: "EG ATTACK", cc: 20, min: 0, max: 1023 },
	{ name: "EG DECAY", cc: 21, min: 0, max: 1023 },
	{ name: "EG INT", cc: 22, min: 0, max: 1023 },
	{ name: "EG TARGET", cc: 23, min: 0, max: 127, enum: [ "CUTOFF", "PITCH2", "PITCH" ] },
	{ name: "LFO RATE", cc: 24, min: 0, max: 1023 },
	{ name: "LFO INT", cc: 26, min: 0, max: 1023 },
	// { name: "VOICE MODE DEPTH", cc: 27, min: 0, max: 1023 },
	{ name: "MOD FX TIME", cc: 28, min: 0, max: 1023 },
	{ name: "MOD FX DEPTH", cc: 29, min: 0, max: 1023 },
	{ name: "MULTI LEVEL", cc: 33, min: 0, max: 1023 },
	{ name: "VCO 1 PITCH", cc: 34, min: 0, max: 1023 },
	{ name: "VCO 2 PITCH", cc: 35, min: 0, max: 1023 },
	{ name: "VCO 1 SHAPE", cc: 36, min: 0, max: 1023 },
	{ name: "VCO 2 SHAPE", cc: 37, min: 0, max: 1023 },
	{ name: "VCO 1 LEVEL", cc: 39, min: 0, max: 1023 },
	{ name: "VCO 2 LEVEL", cc: 40, min: 0, max: 1023 },
	{ name: "CROSS MOD DEPTH", cc: 41, min: 0, max: 1023 },
	{ name: "CUTOFF", cc: 43, min: 0, max: 1023 },
	{ name: "RESONANCE", cc: 44, min: 0, max: 1023 },
	{ name: "VCO 1 OCTAVE", cc: 48, min: 0, max: 127, enum: [ "16'", "8'", "4'", "2'" ] },
	{ name: "VCO 2 OCTAVE", cc: 49, min: 0, max: 127, enum: [ "16'", "8'", "4'", "2'" ] },
	{ name: "VCO 1 WAVE", cc: 50, min: 0, max: 127, enum: [ "SQR", "TRI", "SAW" ] },
	{ name: "VCO 2 WAVE", cc: 51, min: 0, max: 127, enum: [ "SQR", "TRI", "SAW" ] },
	{ name: "MULTI TYPE", cc: 53, min: 0, max: 127, randomMax: 85, enum: [ "NOISE", "VPM", "USER" ] }, // leave the user bank out of this
	{ name: "MULTI SHAPE", cc: 54, min: 0, max: 1023 }, // interface, but not data
	{ name: "LFO TARGET", cc: 56, min: 0, max: 127, enum: [ "CUTOFF", "SHAPE", "PITCH" ] },
	{ name: "LFO WAVE", cc: 57, min: 0, max: 127, enum: [ "SQR", "TRI", "SAW" ] },
	{ name: "LFO MODE", cc: 58, min: 0, max: 127, enum: [ "1-SHOT", "NORMAL", "BPM" ] },
	{ name: "VOICE MODE DEPTH", cc: 59, min: 0, max: 1023 },
	// { name: "DAMPER", cc: 64, min: 0, max: 127, randomize: false }, // damper pedal
	{ name: "SYNC", cc: 80, min: 0, max: 127, enum: [ "OFF", "ON" ] },
	{ name: "RING", cc: 81, min: 0, max: 127, enum: [ "OFF", "ON" ] },
	{ name: "CUTOFF KEYTRACK", cc: 83, min: 0, max: 127, enum: [ "0%", "50%", "100%" ] },
	{ name: "CUTOFF DRIVE", cc: 84, min: 0, max: 127, enum: [ "0%", "50%", "100%" ]  },
	{ name: "MOD FX TYPE", cc: 88, min: 0, max: 127, randomMax: 101, enum: [
			"CHORUS", "ENSEMBLE", "PHASER", "FLANGER", "USER"
		]
	},
	{ name: "DELAY SUB TYPE", cc: 89, min: 0, max: 127, randomMax: 76, enum: [
			"STEREO", "MONO", "PING PONG", "HIPASS",
			"TAPE", "ONE TAP", "STEREO BPM", "MONO BPM",
			"PING BPM", "HIPASS BPM", "TAPE BPM", "DOUBLING",
			"USER1", "USER2", "USER3", "USER4", "USER5", "USER6", "USER7", "USER8"
		]
	},
	{ name: "REVERB SUB TYPE", cc: 90, min: 0, max: 127, randomMax: 71, enum: [
			"HALL", "SMOOTH", "ARENA", "PLATE",
			"ROOM", "EARLY REF", "SPACE", "RISER",
			"SUBMARINE", "HORROR", "USER1", "USER2",
			"USER3", "USER4", "USER5", "USER6", "USER7", "USER8"
		]
	},
	{ name: "MOD FX ON-OFF", cc: 92, min: 0, max: 127, enum: [ "OFF", "ON" ] },
	{ name: "DELAY ON-OFF", cc: 93, min: 0, max: 127, enum: [ "OFF", "ON" ] },
	{ name: "REVERB ON-OFF", cc: 94, min: 0, max: 127, enum: [ "OFF", "ON" ] },
	{ name: "MOD FX SUB TYPE", cc: 96, min: 0, max: 127, enumFn: getModFxSubType },
	{ name: "MULTI SUB TYPE SELECT", cc: 103, min: 0, max: 127, enumFn: getMultiSubType },
	{ name: "MULTI SHIFT SHAPE", cc: 104, min: 0, max: 1023 }, // interface, but not data
	{ name: "DELAY TIME", cc: 105, min: 0, max: 1023 },
	{ name: "DELAY DEPTH", cc: 106, min: 0, max: 1023 },
	{ name: "DELAY DRY WET", cc: 107, min: 0, max: 1023 },
	{ name: "REVERB TIME", cc: 108, min: 0, max: 1023 },
	{ name: "REVERB DEPTH", cc: 109, min: 0, max: 1023 },
	{ name: "REVERB DRY WET", cc: 110, min: 0, max: 1023 }
];

// the "MOD FX SUB TYPE" options depend on the value of "MOD FX TYPE"
function getModFxSubType() {
	var param = findName("MOD FX TYPE");
	if (param) {
		switch (param.getEnumString()) {
			case "CHORUS":
				return [ "STEREO", "LIGHT", "DEEP", "TRIPHASE", "HARMONIC", "MONO", "FEEDBACK", "VIBRATO" ];
				break;
			case "ENSEMBLE":
				return [ "STEREO", "LIGHT", "MONO" ];
				break;
			case "PHASER":
				return [ "STEREO", "FAST", "ORANGE", "SMALL", "SMALL RESO", "BLACK", "FORMANT", "TWINKLE"];
				break;
			case "FLANGER":
				return [ "STEREO", "LIGHT", "MONO", "HIGH SWEEP", "MID SWEEP", "PAN SWEEP", "MONO SWEEP", "TRIPHASE" ];
				break;
			case "USER":
				return [ "USER1", "USER2", "USER3", "USER4", "USER5", "USER6", "USER7", "USER8",
							"USER9", "USER10", "USER11", "USER12", "USER13", "USER14", "USER15", "USER16" ];
				break;
			default:
				return [];
		}
	}
	else post("getModFxSubType: no param\n");
	return [];
}

// the "MULTI SUB TYPE" options depend on the value of "MULTI TYPE"
function getMultiSubType() {
	var param = findName("MULTI TYPE");
	if (param) {
		switch (param.getEnumString()) {
			case "NOISE":
				return [ "HIGH", "LOW", "PEAK", "DECIM" ];
				break;
			case "VPM":
				return [ "SIN1", "SIN2", "SIN3", "SIN4", "SAW1", "SAW2", "SQU1", "SQU2",
							"FAT1", "FAT2", "AIR1", "AIR2", "DECAY1", "DECAY2", "CREEP", "THROAT" ];
				break;
			case "USER":
				return [ "USER1", "USER2", "USER3", "USER4", "USER5", "USER6", "USER7", "USER8",
							"USER9", "USER10", "USER11", "USER12", "USER13", "USER14", "USER15", "USER16" ];
				break;
			default:
				return [];
		}
	}
	else post("getMultiSubType: no param\n");
	return [];
}

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

exports.init = postProcess;
exports.generateRandomValues = generateRandomValues;
exports.findName = findName;
exports.findIndex = findIndex;
