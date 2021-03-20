var utils = require("minilogueXD_utils");
var inputAssignEnum = utils.inputAssignEnum;

var DATAbytes = new Array(1024);

var motionParamsEnum = [ 
    "None", "PORTAMENTO", "VOICE MODE DEPTH", "VOICE MODE TYPE", "VCO 1 WAVE", "VCO 1 OCTAVE", 
    "VCO 1 PITCH", "VCO 1 SHAPE", "VCO 2 WAVE", "VCO 2 OCTAVE", "VCO 2 PITCH", "VCO 2 SHAPE", 
    "SYNC", "RING", "CROSS MOD DEPTH", "MULTI ENGINE TYPE", "MULTI ENGINE NOISE TYPE", 
    "MULTI ENGINE VPM TYPE", "MULTI SHAPE NOISE", "MULTI SHAPE VPM", "MULTI SHAPE USER", 
    "MULTI SHIFT SHAPE NOISE", "MULTI SHIFT SHAPE VPM", "MULTI SHIFT SHAPE USER", "VCO 1 LEVEL", 
    "VCO 2 LEVEL", "MULTI ENGINE LEVEL", "CUTOFF", "RESONANCE", "KEYTRACK", "AMP EG ATTACK", 
    "AMP EG DECAY", "AMP EG SUSTAIN", "AMP EG RELEASE", "EG ATTACK", "EG DECAY", "EG INT", 
    "EG TARGET", "LFO WAVE", "LFO MODE", "LFO RATE", "LFO INT", "LFO TARGET", "MOD FX ON/OFF", 
    "MOD FX TIME", "MOD FX DEPTH", "DELAY ON/OFF", "DELAY TIME", "DELAY DEPTH", "REVERB ON/OFF", 
    "REVERB TIME", "REVERB DEPTH", "PITCH BEND", "GATE TIME" 
];

var syx = [
    { name: "OCTAVE", min: 0, max: 4, syx: 16 },
    { name: "KEY TRIG", min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 18 },

    // these are the actual sysex bytes changed by CC#96, MOD FX SUB TYPE
    { name: "MOD FX CHORUS", min: 0, max: 7, syx: 90 },
    { name: "MOD FX ENSEMBLE", min: 0, max: 2, syx: 91 },
    { name: "MOD FX PHASER", min: 0, max: 7, syx: 92 },
    { name: "MOD FX FLANGER", min: 0, max: 7, syx: 93 },
    { name: "MOD FX USER", min: 0, max: 15, syx: 94 },

    { name: "USER PARAM1 TYPE", min: 0, max: 3, enum: [ "Percent", "Bipolar", "Select", "" ], enumValueToIndex: userParamTypeValueToIndex, syx: 149, syxBit: 0, syxBitLen: 2 }, // 3 = uninitialized, apparently
    { name: "USER PARAM2 TYPE", min: 0, max: 3, enum: [ "Percent", "Bipolar", "Select", "" ], enumValueToIndex: userParamTypeValueToIndex, syx: 149, syxBit: 2, syxBitLen: 2 },
    { name: "USER PARAM3 TYPE", min: 0, max: 3, enum: [ "Percent", "Bipolar", "Select", "" ], enumValueToIndex: userParamTypeValueToIndex, syx: 149, syxBit: 4, syxBitLen: 2 },
    { name: "USER PARAM4 TYPE", min: 0, max: 3, enum: [ "Percent", "Bipolar", "Select", "" ], enumValueToIndex: userParamTypeValueToIndex, syx: 149, syxBit: 6, syxBitLen: 2 },
    { name: "USER PARAM5 TYPE", min: 0, max: 3, enum: [ "Percent", "Bipolar", "Select", "" ], enumValueToIndex: userParamTypeValueToIndex, syx: 148, syxBit: 0, syxBitLen: 2 },
    { name: "USER PARAM6 TYPE", min: 0, max: 3, enum: [ "Percent", "Bipolar", "Select", "" ], enumValueToIndex: userParamTypeValueToIndex, syx: 148, syxBit: 2, syxBitLen: 2 },
    { name: "MIDI AFTER TOUCH ASSIGN", min: 0, max: 28, enum: inputAssignEnum, syx: 155 },

    // step sequencer stuff
    { name: "BPM", min: 100, max: 3000, getStringValue: function() {
            return (this.value / 10.).toFixed(1).toString();
        }, syx: 164, syxLen: 2 },
    { name: "Step Length", min: 1, max: 16, syx: 166 },
    { name: "Step Resolution", min: 0, max: 4, enum: [ "1/16", "1/8", "1/4", "1/2", "1/1" ], syx: 167 },
    { name: "Swing", min: 0, max: 150, uiRange: { min: -75, max: 75}, syx: 168 },
    { name: "Default Gate Time", min: 0, max: 72, getStringValue: function() {
            return Math.floor(this.value * 100. / 72.).toString() + "%";
        }, syx: 169}, // 0-72 = 0%-100% (* 1.38888888888)

    // step sequencer, bytes 170-173: just set all to 0 by default

    // below can be set to 0 for generation purposes, should be preserved if pulled
    { name: "MOTION SLOT 1 ON/OFF", min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 174, syxBit: 0 },
    { name: "MOTION SLOT 1 SMOOTH", min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 174, syxBit: 1 },
    { name: "MOTION SLOT 1 PARAMETER", min: 0, max: 129, enum: motionParamsEnum, 
            enumIndexToValue: motionIndexToValue, enumValueToIndex: motionValueToIndex, syx: 175 },
    { name: "MOTION SLOT 2 ON/OFF", min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 176, syxBit: 0 },
    { name: "MOTION SLOT 2 SMOOTH", min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 176, syxBit: 1 },
    { name: "MOTION SLOT 2 PARAMETER", min: 0, max: 129, enum: motionParamsEnum, 
            enumIndexToValue: motionIndexToValue, enumValueToIndex: motionValueToIndex, syx: 177 },
    { name: "MOTION SLOT 3 ON/OFF", min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 178, syxBit: 0 },
    { name: "MOTION SLOT 3 SMOOTH", min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 178, syxBit: 1 },
    { name: "MOTION SLOT 3 PARAMETER", min: 0, max: 129, enum: motionParamsEnum, 
            enumIndexToValue: motionIndexToValue, enumValueToIndex: motionValueToIndex, syx: 179 },
    { name: "MOTION SLOT 4 ON/OFF", min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 180, syxBit: 0 },
    { name: "MOTION SLOT 4 SMOOTH", min: 0, max: 1, enum: [ "OFF", "ON" ], syx: 180, syxBit: 1 },
    { name: "MOTION SLOT 4 PARAMETER", min: 0, max: 129, enum: motionParamsEnum, 
            enumIndexToValue: motionIndexToValue, enumValueToIndex: motionValueToIndex, syx: 181 },

    // step sequencer, bytes 182-1021: just set all to 0

    { name: "ARP Gate Time", min: 0, max: 72, getStringValue: function() {
            return Math.floor(this.value * 100. / 72.).toString() + "%";
        }, syx: 1022 }, // 0-72 = 0%-100% (* 1.38888888888)
    { name: "ARP Rate", min: 0, max: 10, enum: [
            "64th", "48th", "32th", "24th", "16th",
            "16.th", "12th", "8th", "8.th", "6th", "4th"
        ], syx: 1023, syxOffset: 1 }
];

function userParamTypeValueToIndex(val) {
    if (val > 3) return 3;
    if (val < 0) return 0;
    return val;
}

function motionIndexToValue(idx) {
    if (idx === 0) return 0;
    else if (idx <= 17) return idx + 14;
    else if (idx <= 28) return idx + 15;
    else if (idx <= 43) return idx + 16;
    else if (idx <= 46) return idx + 22;
    else if (idx <= 49) return idx + 23;
    else if (idx <= 51) return idx + 24;
    else if (idx === 52) return 126;
    else if (idx === 53) return 129;
    return -1;
}

function motionValueToIndex(val) {
    if (val === 0) return 0;
    else if (val >= 15 && val <= 31) return val - 14;
    else if (val >= 33 && val <= 43) return val - 15;
    else if (val >= 45 && val <= 59) return val - 16;
    else if (val >= 66 && val <= 68) return val - 22;
    else if (val >= 70 && val <= 72) return val - 23;
    else if (val >= 74 && val <= 75) return val - 24;
    else if (val ==- 126) return 52;
    else if (val === 129) return 53;
    return -1;
}

var PROGbytes = [];
var PREDbytes = [];
var SQbytes = [];

for (var i = 0; i < 4; i++) {
    PROGbytes.push("PROG".charCodeAt(i));
    PREDbytes.push("PRED".charCodeAt(i));
    if (i < 2) {
        SQbytes.push("SQ".charCodeAt(i));
    }
}

function initializeDataBytes() {
    var f = new File("minilogueXD_InitProgram.syx", "read");
    if (f.isopen) {
        var a = f.readbytes(f.eof);
        processEditBuffer(a);
        f.close();
        if (utils.debug) {
            post("initialized DATAbytes with " + DATAbytes.length + " bytes\n");
        }
		return;
	}

    for (var i in PROGbytes) {
        DATAbytes.push(PROGbytes[i]);
    }
    for (var i = 4; i < 156; i++) {
        DATAbytes.push(0);
    }
    for (var i in PREDbytes) {
        DATAbytes.push(PREDbytes[i]);
    }
    for (var i in SQbytes) {
        DATAbytes.push(SQbytes[i]);
    }
    for (var i = 162; i < 1024; i++) {
        DATAbytes.push(0);
    }
    if (utils.debug) {
        post("initialized DATAbytes with " + DATAbytes.length + " bytes\n");
    }
}

function convert8to7bit(inputData) {
    var convertedData = [];
    var MSBidx = 0;
    var count = 0;
    for (var i = 0; i < inputData.length; i++) {
        var pos = i % 7; // relative position in this group of 7 bytes
        if (!pos) {
          MSBidx = count; // cache the position of the MSB byte
          convertedData[count++] = 0;
        }
        var highBit = inputData[i] & 0x80;
        highBit >>= 7 - pos; // position this bit in the MSB byte
        convertedData[MSBidx] |= highBit;
        convertedData[count++] = inputData[i] & 0x7F;
    }
    return convertedData;
}

function convert7to8bit(inputData) {
    var convertedData = [];
    var count = 0;
    var highBits = 0;
    for (var i = 0; i < inputData.length; i++) {
        var pos = i % 8; // relative position in this group of 8 bytes
        if (!pos) { // first byte
            highBits = inputData[i];
        }
        else {
            var highBit = highBits & (1 << (pos - 1));
            highBit <<= (8 - pos); // shift it to the 7th bit
            convertedData[count++] = inputData[i] | highBit;
        }
    }
    return convertedData;  
}

function getEditBufferRequest() {
    return [ 0xF0, 0x42, 0x30, 0x00, 0x01, 0x51, 0x10, 0xF7 ];
}

var sysexHeader = [ 0xF0, 0x42, 0x30, 0x00, 0x01, 0x51 ];

var editBufferFunc = 0x40;
var AckFunc = 0x23;
var NakFunc = 0x24;

function getEditBuffer() {
    var editBuffer = sysexHeader.slice(0);
    editBuffer.push(editBufferFunc);
    editBuffer = editBuffer.concat(convert8to7bit(DATAbytes));
    editBuffer.push(0xF7);
    return editBuffer;
}

function printBuffer(buf, label) {
    var cur = 0;
    var len = buf.length;
    post(label + ":\n");
    while (cur < len) {
        var str = "";
        for (var i = cur; i < cur + 16 && i < len; i++) {
            str += "0x" + ("0" + buf[i].toString(16)).slice(-2) + " ";
        }
        post(str + "\n");
        cur += 16;
    }
}

function processEditBuffer(packedBytes) {
    for (var i in sysexHeader) {
        if (packedBytes[i] !== sysexHeader[i]) {
            post("bad header bytes\n");
            return false;
        }
    }
    if (packedBytes[packedBytes.length - 1] != 0xF7) {
        post("bad footer byte\n");
        return false;
    }
    var func = packedBytes[sysexHeader.length];
    if (func === AckFunc) {
        return false;
    }
    if (func === NakFunc) {
        post("operation failed at hardware\n");
        return false;
    }
    if (func !== editBufferFunc) {
        post("unknown sysex function\n");
        return false;
    }
    var byteBuffer = packedBytes.slice(sysexHeader.length + 1, packedBytes.length - 1);
    var convertedData = convert7to8bit(byteBuffer);
    if (convertedData.length != 1024) {
        post("bad converted data length\n");
        return false;
    }
    DATAbytes = convertedData;
    return true;
}

function postProcess() {
    initializeDataBytes();
    for (var s in syx) {
        var sx = syx[s];
        utils.postProcessParam(sx);
        sx.getOutput = function() { return []; }
    }
}

function getParameterValueFromInstrumentData(param) {
    var syx = param.syx;
    if (syx >= 0) {
        var val = 0;
        if (param.syxBit !== undefined) {
            var mask = 0x1 << param.syxBit;
            if (param.syxBitLen > 1) {
                mask |= 0x1 << (param.syxBit + 1); // can only be 2
            }
            val = (DATAbytes[syx] & mask) >> param.syxBit;
        }
        else {
            val = DATAbytes[syx];
            if (param.syxLen && param.syxLen > 1) { // can only be 2
                // post(param.name + ": " + val + ",  " + DATAbytes[syx + 1] + "\n");
                val = val | (DATAbytes[syx + 1] << 8);
            }
        }
        if (param.syxOffset) val -= param.syxOffset;
        param.setValueFromSysex(val);
        if (utils.debug) {
            post(param.name + ": " + param.value + " (" + param.getValueAsString() + ")\n");
        }
        return true;
    }
    return false;
}

function setInstrumentDataFromParameterValue(param) {
    var syx = param.syx;
    if (syx >= 0) {
        var val = param.getValueForSysex();
        if (param.syxOffset) val += param.syxOffset;
        if (param.syxBit !== undefined) {
            var mask = 0x1 << param.syxBit;
            if (param.syxBitLen > 1) {
                mask |= 0x1 << (param.syxBit + 1); // can only be 2
            }
            DATAbytes[syx] &= ~mask; // zero the masked bits

            var shifted = val << param.syxBit;
            DATAbytes[syx] |= shifted;
        }
        else {
            DATAbytes[syx] = val & 0xFF;
            if (param.syxLen && param.syxLen > 1) { // can only be 2
                DATAbytes[syx + 1] = (val & 0xFF00) >> 8;
            }
        }
        return true;
    }
    return false;
}

function getAllParams() {
	return syx;
}

function findName(name) {
	for (var s in syx) {
		if (syx[s].name === name) {
			return syx[s];
		}
	}
	return null;
}

function compareEditBuffers(bytes, bytes2) {
    var good = true;
	if (bytes.length !== bytes2.length) {
        post("bad length: " + bytes.length + " vs. " + bytes2.length + "\n");
        good = false;
	}
	else {
        var b1 = convert7to8bit(bytes.slice(sysexHeader.length + 1, bytes.length - 1));
        var b2 = convert7to8bit(bytes2.slice(sysexHeader.length + 1, bytes2.length - 1));
		for (var b in b1) {
			if (b1[b] !== b2[b]) {
                post("byte mismatch @ " + b + ": " + b1[b] + " vs. " + b2[b] + "\n");
                good = false;
			}
		}
    }
    post("=> sysex comparison test " + (good ? "PASSED" : "FAILED") + "\n");
}

exports.init = postProcess;
exports.findName = findName;
exports.processEditBuffer = processEditBuffer;
exports.getEditBuffer = getEditBuffer;
exports.getEditBufferRequest = getEditBufferRequest;
exports.getAllParams = getAllParams;
exports.getParameterValueFromInstrumentData = getParameterValueFromInstrumentData;
exports.setInstrumentDataFromParameterValue = setInstrumentDataFromParameterValue;
exports.compareEditBuffers = compareEditBuffers;