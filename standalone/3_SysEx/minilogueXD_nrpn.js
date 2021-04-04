var utils = require("minilogueXD_utils");
const { getParamForName } = require("./minilogueXD_utils");
var randomInt = utils.randomInt;
var lsbCC = utils.lsbCC;
var asciiTable = utils.setupAsciiTable();
var inputAssignEnum = utils.inputAssignEnum;

var nrpns = [
	{ name: "PROGRAM NAME 1", nrpn: 0x01, ascii: 1, syx: 4,  // a 0 can appear at the end
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 2", nrpn: 0x02, ascii: 1, syx: 5,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 3", nrpn: 0x03, ascii: 1, syx: 6,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 4", nrpn: 0x04, ascii: 1, syx: 7,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 5", nrpn: 0x05, ascii: 1, syx: 8,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 6", nrpn: 0x06, ascii: 1, syx: 9,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 7", nrpn: 0x07, ascii: 1, syx: 10,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 8", nrpn: 0x08, ascii: 1, syx: 11,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 9", nrpn: 0x09, ascii: 1, syx: 12,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 10", nrpn: 0x0A, ascii: 1, syx: 13,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 11", nrpn: 0x0B, ascii: 1, syx: 14,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "PROGRAM NAME 12", nrpn: 0x0C, ascii: 1, syx: 15,
		onChange: function(newval) { onChangeProgramName.bind(this)(this.nrpn - 1, newval); } 
	},
	{ name: "VOICE MODE TYPE", nrpn: 0x10, min: 0, max: 4, enum: [ "ARP LATCH", "ARP", "CHORD", "UNISON", "POLY" ], syx: 21,
		onChange: function(newval) { 
			this.value = newval; 
			var param = utils.getParamForName("VOICE MODE DEPTH"); 
			if (param) {
				param.touch(); // update the label for the new mode (the depth itself is retained across modes)
			}
		}	
	},
	{ name: "MULTI SELECT NOISE", nrpn: 0x11, min: 0, max: 3, randomize: false, syx: 39 },
	{ name: "MULTI SELECT VPM", nrpn: 0x12, min: 0, max: 15, randomize: false, syx: 40 },
	{ name: "MULTI SELECT USER", nrpn: 0x13, min: 0, max: 15, randomize: false, syx: 41 },
	{ name: "MULTI SHAPE NOISE", nrpn: 0x14, min: 0, max: 1023, randomize: false, syx: 42, syxLen: 2 },
	{ name: "MULTI SHAPE VPM", nrpn: 0x15, min: 0, max: 1023, randomize: false, syx: 44, syxLen: 2 },
	{ name: "MULTI SHAPE USER", nrpn: 0x16, min: 0, max: 1023, randomize: false, syx: 46, syxLen: 2 },
	{ name: "MULTI SHIFT SHAPE NOISE", nrpn: 0x17, min: 0, max: 1023, randomize: false, syx: 48, syxLen: 2 },
	{ name: "MULTI SHIFT SHAPE VPM", nrpn: 0x18, min: 0, max: 1023, randomize: false, syx: 50, syxLen: 2 },
	{ name: "MULTI SHIFT SHAPE USER", nrpn: 0x19, min: 0, max: 1023, randomize: false, syx: 52, syxLen: 2 },
	{ name: "BEND RANGE (+)", nrpn: 0x20, min: 0, max: 12, randomize: false, interface: true, syx: 111 },
	{ name: "BEND RANGE (-)", nrpn: 0x21, min: 0, max: 12, randomize: false, interface: true, syx: 112 },
	{ name: "JOYSTICK ASSIGN (+)", nrpn: 0x22, min: 0, max: 28, randomize: false, interface: true, enum: inputAssignEnum, syx: 113 },
	{ name: "JOYSTICK RANGE (+)", nrpn: 0x23, min: 0, max: 200, randomize: false, interface: true, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 114 },
	{ name: "JOYSTICK ASSIGN (-)", nrpn: 0x24, min: 0, max: 28, randomize: false, interface: true, enum: inputAssignEnum, syx: 115 },
	{ name: "JOYSTICK RANGE (-)", nrpn: 0x25, min: 0, max: 200, randomize: false, interface: true, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 116 },
	{ name: "CV IN MODE", nrpn: 0x28, min: 0, max: 2, randomize: false, interface: true, enum: [
			"Modulation", "CV/Gate(+)", "CV/Gate(-)"
		], syx: 117
	},
	{ name: "CV IN 1 ASSIGN", nrpn: 0x29, min: 0, max: 28, randomize: false, interface: true, enum: inputAssignEnum, syx: 118 },
	{ name: "CV IN 1 RANGE", nrpn: 0x2A, min: 0, max: 200, randomize: false, interface: true, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 119 },
	{ name: "CV IN 2 ASSIGN", nrpn: 0x2B, min: 0, max: 28, randomize: false, interface: true, enum: inputAssignEnum, syx: 120 },
	{ name: "CV IN 2 RANGE", nrpn: 0x2C, min: 0, max: 200, randomize: false, interface: true, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 121 },
	{ name: "MICRO TUNING", nrpn: 0x30, min: 0, max: 127, randomize: false, interface: true, enum: [ // note: can make kbd "non-tracking"
			"Equal Temp",  "Pure Major",  "Pure Minor",  "Pythagorean",
			"Werckmeister",  "Kirnburger",  "Slendro",  "Pelog",
			"Ionian",  "Dorian",  "Aeolian",  "Major Penta",
			"Minor Penta",  "Reverse",
			"AFX001",  "AFX002",  "AFX003",  "AFX004",  "AFX005",  "AFX006",
			"DC001",  "DC002",  "DC003",
			"USER SCALE 1",  "USER SCALE 2",  "USER SCALE 3",  "USER SCALE 4",  "USER SCALE 5",  "USER SCALE 6",
			"USER OCTAVE 1",  "USER OCTAVE 2",  "USER OCTAVE 3",  "USER OCTAVE 4",  "USER OCTAVE 5",  "USER OCTAVE 6"
		],
		enumIndexToValue: function(idx) {
			if (idx >= 0 && idx <= 22) {
				return idx;
			}
			if (idx >= 23 && idx <= 34) {
				return idx + 89;
			}
			return -1;
		},
		enumValueToIndex: function(val) {
			if (val >= 0 && val <= 22) {
				return val;
			}
			if (val >= 112 && val <= 123) {
				return val - 89;
			}
			return -1;
		},
		syx: 122
	},
	{ name: "SCALE KEY", nrpn: 0x31, min: 0, max: 24, randomize: false, interface: true, uiRange: { min: -12, max: 12 }, uiCentered: true, syx: 123 },
	{ name: "PROGRAM TUNING", nrpn: 0x32, min: 0, max: 100, uiRange: { min: -50, max: 50 }, uiCentered: true, syx: 124 },
	{ name: "LFO KEY SYNC", nrpn: 0x34, min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 125 },
	{ name: "LFO VOICE SYNC", nrpn: 0x35, min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 126 },
	{ name: "LFO TARGET OSC", nrpn: 0x36, min: 0, max: 3, enum: [ "All", "VCO1+2", "VCO2", "Multi" ], syx: 127 },
	{ name: "EG VELOCITY", nrpn: 0x38, min: 0, max: 127, syx: 128 },
	{ name: "AMP VELOCITY", nrpn: 0x39, min: 0, max: 127, syx: 129 },
	{ name: "MULTI OCTAVE", nrpn: 0x3A, min: 0, max: 3, enum: [ "16'", "8'", "4'", "2'" ], syx: 130 },
	{ name: "MULTI ROUTING", nrpn: 0x3B, min: 0, max: 1, enum: [ "Pre-VCF", "Post-VCF" ], syx: 131 },
	{ name: "EG LEGATO", nrpn: 0x3C, min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 132 },
	{ name: "PORTAMENTO MODE", nrpn: 0x3D, min: 0, max: 1, enum: [ "Auto", "On" ], syx: 133 },
	{ name: "PORTAMENTO BPM SYNC", nrpn: 0x3E, min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 134 },
	{ name: "PROGRAM LEVEL", nrpn: 0x3F, min: 0, max: 120, uiRange: { min: -18, max: 6 }, randomize: false, syx: 135, syxOffset: 12,
		viewToValue: function(viewVal) { return Math.round((viewVal + 18) * 5.); }, // special case, view has different scale than value
		valueToView: function(val) { return ((val / 5.) - 18.); }
	},
	{ name: "VPM PARAM 1 (Feedback)", nrpn: 0x40, min: 0, max: 200, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 136 },
	{ name: "VPM PARAM 2 (Noise Depth)", nrpn: 0x41, min: 0, max: 200, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 137 },
	{ name: "VPM PARAM 3 (Shape Mod Int)", nrpn: 0x42, min: 0, max: 200, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 138 },
	{ name: "VPM PARAM 4 (Mod Attack)", nrpn: 0x43, min: 0, max: 200, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 139 },
	{ name: "VPM PARAM 5 (Mod Decay)", nrpn: 0x44, min: 0, max: 200, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 140 },
	{ name: "VPM PARAM 6 (Mod Key Track)", nrpn: 0x45, min: 0, max: 200, uiRange: { min: -100, max: 100 }, uiCentered: true, syx: 141 },
	{ name: "USER PARAM 1", nrpn: 0x48, userparam: 1, randomize: false, syx: 142 },
	{ name: "USER PARAM 2", nrpn: 0x49, userparam: 1, randomize: false, syx: 143 },
	{ name: "USER PARAM 3", nrpn: 0x4A, userparam: 1, randomize: false, syx: 144 },
	{ name: "USER PARAM 4", nrpn: 0x4B, userparam: 1, randomize: false, syx: 145 },
	{ name: "USER PARAM 5", nrpn: 0x4C, userparam: 1, randomize: false, syx: 146 },
	{ name: "USER PARAM 6", nrpn: 0x4D, userparam: 1, randomize: false, syx: 147 },
	{ name: "Program Transpose", nrpn: 0x50, min: 1, max: 25, uiRange: {min: -12, max: 12}, randomize: false, syx: 150 },
	// { name: "MASTER VOLUME", nrpn: 0x7F, min: 0, max: 16383 } // only used in chain mode
];

var nameString = new Array(12);

function updateProgramName(newName) {
	for (var i = 0; newName && i < 12; i++) {
		var code = i < newName.length ? newName.charCodeAt(i) : 32;
		var asciiIndex = asciiTable.indexOf(code);
		if (asciiIndex === -1) code = 32;
		var param = findIndex(i + 1);
		if (param) {
			param.value = code; // don't trigger onChange
		}
		nameString[i] = code;
	}
	var g = new Global("mlxd_global");
	if (g.programNameListener) {
		var processedName = String.fromCharCode.apply(String, nameString);
		if (processedName !== newName) {
			g.programNameListener.setvalue(processedName.replace(/\s+$/g, ""));
		}
	}
}

function onChangeProgramName(idx, newValue) {
	var asciiIndex = asciiTable.indexOf(newValue);
	this.value = asciiIndex >= 0 ? newValue : 32;
	nameString[idx] = this.value;

	var g = new Global("mlxd_global");
	if (g.programNameListener) {
		var processedName = String.fromCharCode.apply(String, nameString);
		g.programNameListener.setvalue(processedName.replace(/\s+$/g, ""));
	}
}

function pushProgramName() {
	var g = new Global("mlxd_global");
	if (g.programNameListener) {
		var processedName = String.fromCharCode.apply(String, nameString);
		g.programNameListener.setvalue(processedName.replace(/\s+$/g, ""));
	}
}

function findName(name) {
	for (var n in nrpns) {
		if (nrpns[n].name === name) {
			return nrpns[n];
		}
	}
	return null;
}

function findIndex(index) {
	for (var n in nrpns) {
		if (nrpns[n].nrpn === index) {
			return nrpns[n];
		}
	}
	return null;
}

function nrpnRandomValue(nn) {
	if (nn.ascii) {
		var rnd = randomInt(0, asciiTable.length - 1);;
		return asciiTable[rnd];
	}
	return randomInt(nn.min, nn.randomMax ? nn.randomMax : nn.max);
}

function postProcessAscii(nn) {
	nn.min = 0;
	nn.max = 122;
	nn.randomize = false; // we don't want this to show up in the interface
	nn.isEnum = function() { return true; }
	nn.enum = asciiTable;
	nn.enumIndexToValue = function(idx) {
		if (idx >= 0 && idx < asciiTable.length) {
			return asciiTable[idx];
		}
		return -1;
	};
	nn.enumValueToIndex = function(val) {
		var idx = -1;

		if (val === 0) return 0; // convert 0 to ' '
		// find first match for this.value, return its index
		var found = asciiTable.some(function(element, index) { 
			idx = index; 
			return element === this.value; 
		}, this);
		if (found) {
			return idx;
		}
		return -1;
	};
}

function postProcess() {
	for (var n in nrpns) {
		var nn = nrpns[n];
		if (nn.ascii) {
			postProcessAscii(nn);
			nn.getEnumString = function() {
				var idx = this.getEnumIndex();
				if (idx >= 0) {
					var e = this.getEnum();
					if (this.ascii) {
						return String.fromCharCode(e[idx]);
					}
					return e[idx];
				}
				return "";
			};
		}
		utils.postProcessParam(nn);
		nn.getOutput = function() {
			if (this.max < 128) { // 7-bit value
				return { nrpn: [ [ this.nrpn, this.value & 0x7F ] ] };
			}
			else if (this.max < 256) { // 8-bit value, first send out the lower 3 bits on CC#63, followed by the upper 5 bits
				return { cc: [ [ lsbCC, this.value & 0x7 ] ],
						 nrpn: [ [ this.nrpn, (this.value >> 3) & 0x1F ] ] };
			}
			else if (this.max < 1024) { // 10-bit value, first send out the lower 3 bits on CC#63, followed by the upper 8 bits
				return { cc: [ [ lsbCC, this.value & 0x7 ] ],
						 nrpn: [ [ this.nrpn, (this.value >> 3) & 0x7F ] ] };
			}
			else { // 14-bit value, first send out the lower 7 bits on CC#63, followed by the upper 7 bits
				return { cc: [ [ lsbCC, this.value & 0x7F ] ],
						 nrpn: [ [ this.nrpn, (this.value >> 7) & 0x7F ] ] };
			}
		}
	}
}

function generateRandomValues() {
	var params = [];
	for (var n in nrpns) {
		var nn = nrpns[n];
		if (nn.randomize === false) continue;
		nn.setValue(nrpnRandomValue(nn)); // random value for testing
		if (nn.value < nn.min || nn.value > nn.max) {
			post("=> bad value for NRPN " + nn.name + "\n");
		}
		params.push(nn);
		// post(nn.name + ": " + nn.value + (nn.getEnum() ? " (" + nn.getEnumString() + ")" : "") + "\n");
	}
	return params;
}

function getInterfaceParams() {
	var params = [];
	for (var n in nrpns) {
		var nn = nrpns[n];
		if (nn.randomize === false && nn.interface !== true) continue;
		if (!nn.name) {
			post(c + ": " + JSON.stringify(nn) + "\n");
		}
		params.push(nn);
	}
	return params;
}

function getAllParams() {
	return nrpns;
}

exports.init = postProcess;
exports.generateRandomValues = generateRandomValues;
exports.findName = findName;
exports.findIndex = findIndex;
exports.getInterfaceParams = getInterfaceParams;
exports.getAllParams = getAllParams;
exports.updateProgramName = updateProgramName;
