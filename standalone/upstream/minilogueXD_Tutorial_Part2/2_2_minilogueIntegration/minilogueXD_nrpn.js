var utils = require("minilogueXD_utils");
var randomInt = utils.randomInt;
var lsbCC = utils.lsbCC;
var asciiTable = utils.setupAsciiTable();

var nrpns = [
	{ name: "PROGRAM NAME 1", nrpn: 0x01, ascii: 1 },
	{ name: "PROGRAM NAME 2", nrpn: 0x02, ascii: 1 },
	{ name: "PROGRAM NAME 3", nrpn: 0x03, ascii: 1 },
	{ name: "PROGRAM NAME 4", nrpn: 0x04, ascii: 1 },
	{ name: "PROGRAM NAME 5", nrpn: 0x05, ascii: 1 },
	{ name: "PROGRAM NAME 6", nrpn: 0x06, ascii: 1 },
	{ name: "PROGRAM NAME 7", nrpn: 0x07, ascii: 1 },
	{ name: "PROGRAM NAME 8", nrpn: 0x08, ascii: 1 },
	{ name: "PROGRAM NAME 9", nrpn: 0x09, ascii: 1 },
	{ name: "PROGRAM NAME 10", nrpn: 0x0A, ascii: 1 },
	{ name: "PROGRAM NAME 11", nrpn: 0x0B, ascii: 1 },
	{ name: "PROGRAM NAME 12", nrpn: 0x0C, ascii: 1 },
	{ name: "VOICE MODE TYPE", nrpn: 0x10, min: 0, max: 4, enum: [ "ARP LATCH", "ARP", "CHORD", "UNISON", "POLY" ] },
	{ name: "MULTI SELECT NOISE", nrpn: 0x11, min: 0, max: 3, randomize: false },
	{ name: "MULTI SELECT VPM", nrpn: 0x12, min: 0, max: 15, randomize: false },
	{ name: "MULTI SELECT USER", nrpn: 0x13, min: 0, max: 15, randomize: false },
	{ name: "MULTI SHAPE NOISE", nrpn: 0x14, min: 0, max: 1023, randomize: false },
	{ name: "MULTI SHAPE VPM", nrpn: 0x15, min: 0, max: 1023, randomize: false },
	{ name: "MULTI SHAPE USER", nrpn: 0x16, min: 0, max: 1023, randomize: false },
	{ name: "MULTI SHIFT SHAPE NOISE", nrpn: 0x17, min: 0, max: 1023, randomize: false },
	{ name: "MULTI SHIFT SHAPE VPM", nrpn: 0x18, min: 0, max: 1023, randomize: false },
	{ name: "MULTI SHIFT SHAPE USER", nrpn: 0x19, min: 0, max: 1023, randomize: false },
	{ name: "BEND RANGE (+)", nrpn: 0x20, min: 0, max: 12, randomize: false, interface: true },
	{ name: "BEND RANGE (-)", nrpn: 0x21, min: 0, max: 12, randomize: false, interface: true },
	{ name: "JOYSTICK ASSIGN (+)", nrpn: 0x22, min: 0, max: 28, randomize: false, interface: true },
	{ name: "JOYSTICK RANGE (+)", nrpn: 0x23, min: 0, max: 200, randomize: false, interface: true },
	{ name: "JOYSTICK ASSIGN (-)", nrpn: 0x24, min: 0, max: 28, randomize: false, interface: true },
	{ name: "JOYSTICK RANGE (-)", nrpn: 0x25, min: 0, max: 200, randomize: false, interface: true },
	{ name: "CV IN MODE", nrpn: 0x28, min: 0, max: 2, randomize: false, interface: true },
	{ name: "CV IN 1 ASSIGN", nrpn: 0x29, min: 0, max: 28, randomize: false, interface: true },
	{ name: "CV IN 1 RANGE", nrpn: 0x2A, min: 0, max: 200, randomize: false, interface: true },
	{ name: "CV IN 2 ASSIGN", nrpn: 0x2B, min: 0, max: 28, randomize: false, interface: true },
	{ name: "CV IN 2 RANGE", nrpn: 0x2C, min: 0, max: 200, randomize: false, interface: true },
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
		}
	},
	{ name: "SCALE KEY", nrpn: 0x31, min: 0, max: 24, randomize: false, interface: true },
	{ name: "PROGRAM TUNING", nrpn: 0x32, min: 0, max: 100 },
	{ name: "LFO KEY SYNC", nrpn: 0x34, min: 0, max: 1 },
	{ name: "LFO VOICE SYNC", nrpn: 0x35, min: 0, max: 1 },
	{ name: "LFO TARGET OSC", nrpn: 0x36, min: 0, max: 3 },
	{ name: "EG VELOCITY", nrpn: 0x38, min: 0, max: 127 },
	{ name: "AMP VELOCITY", nrpn: 0x39, min: 0, max: 127 },
	{ name: "MULTI OCTAVE", nrpn: 0x3A, min: 0, max: 3, enum: [ "16'", "8'", "4'", "2'" ] },
	{ name: "MULTI ROUTING", nrpn: 0x3B, min: 0, max: 1, enum: [ "Pre-VCF", "Post-VCF" ] },
	{ name: "EG LEGATO", nrpn: 0x3C, min: 0, max: 1 },
	{ name: "PORTAMENTO MODE", nrpn: 0x3D, min: 0, max: 1, enum: [ "Auto", "On" ] },
	{ name: "PORTAMENTO BPM SYNC", nrpn: 0x3E, min: 0, max: 1 },
	{ name: "PROGRAM LEVEL", nrpn: 0x3F, min: 0, max: 120, randomize: false },
	{ name: "VPM PARAM 1 (Feedback)", nrpn: 0x40, min: 0, max: 200 },
	{ name: "VPM PARAM 2 (Noise Depth)", nrpn: 0x41, min: 0, max: 200 },
	{ name: "VPM PARAM 3 (Shape Mod Int)", nrpn: 0x42, min: 0, max: 200 },
	{ name: "VPM PARAM 4 (Mod Attack)", nrpn: 0x43, min: 0, max: 200 },
	{ name: "VPM PARAM 5 (Mod Decay)", nrpn: 0x44, min: 0, max: 200 },
	{ name: "VPM PARAM 6 (Mod Key Track)", nrpn: 0x45, min: 0, max: 200 },
	{ name: "USER PARAM 1", nrpn: 0x48, userparam: 1, randomize: false },
	{ name: "USER PARAM 2", nrpn: 0x49, userparam: 1, randomize: false },
	{ name: "USER PARAM 3", nrpn: 0x4A, userparam: 1, randomize: false },
	{ name: "USER PARAM 4", nrpn: 0x4B, userparam: 1, randomize: false },
	{ name: "USER PARAM 5", nrpn: 0x4C, userparam: 1, randomize: false },
	{ name: "USER PARAM 6", nrpn: 0x4D, userparam: 1, randomize: false },
	{ name: "Program Transpose", nrpn: 0x50, min: 1, max: 25, randomize: false },
	// { name: "MASTER VOLUME", nrpn: 0x7F, min: 0, max: 16383 }
];

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
	nn.min = 32;
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
		// find first match for this.value, return its index
		var found = asciiTable.some(function(element, index) { 
			idx = index; 
			return element == this.value; 
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
		}
		nn.isEnum = function() {
			return (this.enum || this.enumFn) ? true : false;
		}
		if (nn.isEnum()) {
			nn.getEnum = function() {
				var e = this.enumFn ? this.enumFn() : this.enum;
				return e;
			}
			nn.getEnumIndex = function() {
				if (this.enumValueToIndex) {
					return this.enumValueToIndex(this.value);
				}
				else {
					var e = this.getEnum();
					if (e.length) {
						var range = (this.max - this.min) + 1;
						var idx = Math.floor(e.length * (this.value / range));
						return idx;
					}
				}
				return -1;
			};
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
		nn.value = nrpnRandomValue(nn); // random value for testing
		if (nn.value < nn.min || nn.value > nn.max) {
			post("=> bad value for NRPN " + nn.name + "\n");
		}
		params.push(nn);
		// post(nn.name + ": " + nn.value + (nn.getEnum() ? " (" + nn.getEnumString() + ")" : "") + "\n");
	}
	return params;
}

exports.init = postProcess;
exports.generateRandomValues = generateRandomValues;
exports.findName = findName;
exports.findIndex = findIndex;
