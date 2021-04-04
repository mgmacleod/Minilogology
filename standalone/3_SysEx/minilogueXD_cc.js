var utils = require("minilogueXD_utils");
var randomInt = utils.randomInt;
var lsbCC = utils.lsbCC;

var cctls = [
	{ name: "PORTAMENTO", cc: 5, min: 0, max: 127, syx: 17 },
	{ name: "AMP EG ATTACK", cc: 16, min: 0, max: 1023, syx: 66, syxLen: 2 },
	{ name: "AMP EG DECAY", cc: 17, min: 0, max: 1023, syx: 68, syxLen: 2 },
	{ name: "AMP EG SUSTAIN", cc: 18, min: 0, max: 1023, syx: 70, syxLen: 2 },
	{ name: "AMP EG RELEASE", cc: 19, min: 0, max: 1023, syx: 72, syxLen: 2 },
	{ name: "EG ATTACK", cc: 20, min: 0, max: 1023, syx: 74, syxLen: 2 },
	{ name: "EG DECAY", cc: 21, min: 0, max: 1023, syx: 76, syxLen: 2 },
	{ name: "EG INT", cc: 22, min: 0, max: 1023, syx: 78, syxLen: 2 },
	{ name: "EG TARGET", cc: 23, min: 0, max: 127, enum: [ "CUTOFF", "PITCH2", "PITCH" ], syx: 80 },
	{ name: "LFO RATE", cc: 24, min: 0, max: 1023, syx: 83, syxLen: 2 },
	{ name: "LFO INT", cc: 26, min: 0, max: 1023, syx: 85, syxLen: 2 },
	{ name: "VOICE MODE DEPTH", cc: 27, min: 0, max: 1023, syx: 19, syxLen: 2, onChange: onChangeUpdateVoiceModeDepthLabel }, // use this one to get interface feedback
	{ name: "MOD FX TIME", cc: 28, min: 0, max: 1023, syx: 95, syxLen: 2 },
	{ name: "MOD FX DEPTH", cc: 29, min: 0, max: 1023, syx: 97, syxLen: 2 },
	{ name: "MULTI LEVEL", cc: 33, min: 0, max: 1023, syx: 58, syxLen: 2 },
	{ name: "VCO 1 PITCH", cc: 34, min: 0, max: 1023, syx: 24, syxLen: 2 },
	{ name: "VCO 2 PITCH", cc: 35, min: 0, max: 1023, syx: 30, syxLen: 2 },
	{ name: "VCO 1 SHAPE", cc: 36, min: 0, max: 1023, syx: 26, syxLen: 2 },
	{ name: "VCO 2 SHAPE", cc: 37, min: 0, max: 1023, syx: 32, syxLen: 2 },
	{ name: "VCO 1 LEVEL", cc: 39, min: 0, max: 1023, syx: 54, syxLen: 2 },
	{ name: "VCO 2 LEVEL", cc: 40, min: 0, max: 1023, syx: 56, syxLen: 2 },
	{ name: "CROSS MOD DEPTH", cc: 41, min: 0, max: 1023, syx: 36, syxLen: 2 },
	{ name: "CUTOFF", cc: 43, min: 0, max: 1023, syx: 60, syxLen: 2 },
	{ name: "RESONANCE", cc: 44, min: 0, max: 1023, syx: 62, syxLen: 2 },
	{ name: "VCO 1 OCTAVE", cc: 48, min: 0, max: 127, enum: [ "16'", "8'", "4'", "2'" ], syx: 23 },
	{ name: "VCO 2 OCTAVE", cc: 49, min: 0, max: 127, enum: [ "16'", "8'", "4'", "2'" ], syx: 29 },
	{ name: "VCO 1 WAVE", cc: 50, min: 0, max: 127, enum: [ "SQR", "TRI", "SAW" ], syx: 22 },
	{ name: "VCO 2 WAVE", cc: 51, min: 0, max: 127, enum: [ "SQR", "TRI", "SAW" ], syx: 28 },
	{ name: "MULTI TYPE", cc: 53, min: 0, max: 127, randomMax: 85, enum: [ "NOISE", "VPM", "USER" ], syx: 38, // randomMax: leave the user bank out of this
		onChange: function(val) { onChangeUpdateEnumForParameter.bind(this)(val, "MULTI SUB TYPE SELECT", getMultiSubTypeTarget); } 
	},
	{ name: "MULTI SHAPE", cc: 54, min: 0, max: 1023, // interface, but not data
		onChange: function(val) {
			this.value = val;
			var param = getMultiShapeTarget(); // nrpn param
			if (param) {
				param.setValue(val);
			}
		}
	},
	{ name: "LFO TARGET", cc: 56, min: 0, max: 127, enum: [ "CUTOFF", "SHAPE", "PITCH" ], syx: 87 },
	{ name: "LFO WAVE", cc: 57, min: 0, max: 127, enum: [ "SQR", "TRI", "SAW" ], syx: 81 },
	{ name: "LFO MODE", cc: 58, min: 0, max: 127, enum: [ "1-SHOT", "NORMAL", "BPM" ], syx: 82 },
	// { name: "VOICE MODE DEPTH", cc: 59, min: 0, max: 1023, syx: 19, syxLen: 2 }, // silent version, only for sending
	// { name: "DAMPER", cc: 64, min: 0, max: 127, randomize: false }, // damper pedal
	{ name: "SYNC", cc: 80, min: 0, max: 127, enum: [ "OFF", "ON" ], syx: 34 },
	{ name: "RING", cc: 81, min: 0, max: 127, enum: [ "OFF", "ON" ], syx: 35 },
	{ name: "CUTOFF KEYTRACK", cc: 83, min: 0, max: 127, enum: [ "0%", "50%", "100%" ], syx: 65 },
	{ name: "CUTOFF DRIVE", cc: 84, min: 0, max: 127, enum: [ "0%", "50%", "100%" ], syx: 64 },
	{ name: "MOD FX TYPE", cc: 88, min: 0, max: 127, randomMax: 101, enum: [
			"CHORUS", "ENSEMBLE", "PHASER", "FLANGER", "USER"
		], syx: 89, syxOffset: 1, // sysex is +1 for whatever reason
		onChange: function(val) { onChangeUpdateEnumForParameter.bind(this)(val, "MOD FX SUB TYPE", getModFxTarget); } 
	},
	{ name: "DELAY SUB TYPE", cc: 89, min: 0, max: 127, randomMax: 76, enum: [
			"STEREO", "MONO", "PING PONG", "HIPASS",
			"TAPE", "ONE TAP", "STEREO BPM", "MONO BPM",
			"PING BPM", "HIPASS BPM", "TAPE BPM", "DOUBLING",
			"USER1", "USER2", "USER3", "USER4", "USER5", "USER6", "USER7", "USER8"
		], syx: 100
	},
	{ name: "REVERB SUB TYPE", cc: 90, min: 0, max: 127, randomMax: 71, enum: [
			"HALL", "SMOOTH", "ARENA", "PLATE",
			"ROOM", "EARLY REF", "SPACE", "RISER",
			"SUBMARINE", "HORROR", "USER1", "USER2",
			"USER3", "USER4", "USER5", "USER6", "USER7", "USER8"
		], syx: 106
	},
	{ name: "MOD FX ON-OFF", cc: 92, min: 0, max: 127, enum: [ "OFF", "ON" ], syx: 88 },
	{ name: "DELAY ON-OFF", cc: 93, min: 0, max: 127, enum: [ "OFF", "ON" ], syx: 99 },
	{ name: "REVERB ON-OFF", cc: 94, min: 0, max: 127, enum: [ "OFF", "ON" ], syx: 105 },
	{ name: "MOD FX SUB TYPE", cc: 96, min: 0, max: 127, enumFn: getModFxSubType, 
		onChange: function(val) {
			this.value = val;
			var param = getModFxTarget();
			if (param) {
				param.setValue(this.getValueForView());
			}
		}
	},
	{ name: "MULTI SUB TYPE SELECT", cc: 103, min: 0, max: 127, enumFn: getMultiSubType, 
		onChange: function(val) {
			this.value = val;
			var param = getMultiSubTypeTarget();
			if (param) {
				param.setValue(this.getValueForView());
			}
		}
	},
	{ name: "MULTI SHIFT SHAPE", cc: 104, min: 0, max: 1023, // interface, but not data
		onChange: function(val) {
			this.value = val;
			var param = getMultiShiftShapeTarget(); // nrpn param
			if (param) {
				param.setValue(val);
			}
		}
	},
	{ name: "DELAY TIME", cc: 105, min: 0, max: 1023, syx: 101, syxLen: 2 },
	{ name: "DELAY DEPTH", cc: 106, min: 0, max: 1023, syx: 103, syxLen: 2 },
	{ name: "DELAY DRY WET", cc: 107, min: 0, max: 1023, syx: 151, syxLen: 2 },
	{ name: "REVERB TIME", cc: 108, min: 0, max: 1023, syx: 107, syxLen: 2 },
	{ name: "REVERB DEPTH", cc: 109, min: 0, max: 1023, syx: 109, syxLen: 2 },
	{ name: "REVERB DRY WET", cc: 110, min: 0, max: 1023, syx: 153, syxLen: 2 }
];

function onChangeUpdateEnumForParameter(newval, name, targetFn) {
	this.value = newval;
	var param = findName(name);
	var e = (param && param.enumFn) ? param.enumFn() : [];
	if (e.length) {
		var maxobj = utils.getMaxobjForParameter(name);
		if (maxobj) {
			maxobj.setattr("_parameter_range", e); // update the range in the interface
		}
		var target = targetFn();
		if (target) {
			if (utils.debug) {
				post("onChangeUpdate: " + target.name + " " + target.value + "\n");
			}
			param.setValueFromView(target.value);
			param.setListenerValue();
		}
	}
}

function onChangeUpdateVoiceModeDepthLabel(newval) {
	this.value = newval;
	var label = getVoiceModeDepthLabel.bind(this)();
	if (label !== "") {
		var viewPatcher = patcher.getnamed("View");
		if (viewPatcher) {
			var labelObj = viewPatcher.subpatcher(0).getnamed("VOICE MODE DEPTH LABEL");
			if (labelObj) {
				labelObj.message("set", label);
			}
		}
	}
}

function getVoiceModeDepthLabel() {
	var param = utils.getParamForName("VOICE MODE TYPE");
	if (param) {
		var enumStr = param.getEnumString();
		switch (enumStr) {
			case "ARP LATCH":
			case "ARP":
			case "CHORD":
				var e = [];
				if (enumStr === "CHORD") {
					e = [ "5th","sus2","m","Maj","sus4","m7","7","7sus4","Maj7","aug","dim","m7b5","mMaj7","Maj7b5" ];
				}
				else {
					e = [ "MANUAL 1","MANUAL 2","RISE 1","RISE 2","FALL 1","FALL 2","RISE FALL 1","RISE FALL 2","POLY 1","POLY 2","RANDOM 1","RANDOM 2","RANDOM 3" ];
				}
				var range = (this.max - this.min) + 1;
				var idx = Math.floor(e.length * (this.value / range)) - this.min;
				return enumStr + ": " + e[idx];
				break;
			case "UNISON":
				var detune = Math.floor(this.value * 50 / 1023.)
				return enumStr + ": " + detune + " Cent" + (detune !== 1 ? "s" : "");
				break;
			case "POLY":
				if (this.value <= 255) {
					return "Poly";
				}
				else {
					var tmp = this.value - 255;
					return "Duo: " + Math.floor(tmp * 1023. / 768.);
				}
				break;
			default:
				return "";
		}
	}
	else post("getVoiceModeDepth: no param\n");
	return "";
}

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

function getParamTarget(paramName, targetBaseName) {
	var param = findName(paramName);
	if (param) {
		var targetName = targetBaseName + " " + param.getEnumString();
		return utils.getParamForName(targetName);
	}
	return null;
}

function getModFxTarget() {
	return getParamTarget("MOD FX TYPE", "MOD FX");
}

// the "MULTI SUB TYPE SELECT" options depend on the value of "MULTI TYPE"
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

function getMultiSubTypeTarget() {
	return getParamTarget("MULTI TYPE", "MULTI SELECT");
}

function getMultiShapeTarget() {
	return getParamTarget("MULTI TYPE", "MULTI SHAPE");
}

function getMultiShiftShapeTarget() {
	return getParamTarget("MULTI TYPE", "MULTI SHIFT SHAPE");
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

		utils.postProcessParam(cc);
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
		cc.setValue(randomInt(cc.min, cc.randomMax ? cc.randomMax : cc.max)); // random value for testing
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

function getAllParams() {
	return cctls;
}

exports.init = postProcess;
exports.generateRandomValues = generateRandomValues;
exports.findName = findName;
exports.findIndex = findIndex;
exports.getInterfaceParams = getInterfaceParams;
exports.getAllParams = getAllParams;
