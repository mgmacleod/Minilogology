exports.debug = false; // set this to true to get chatty debugging output

exports.setupAsciiTable = function() {
	var asciiTable = [];
	for (var i = 32; i <= 58; i++) {
		if (i !== 34 && i !== 43) {
			asciiTable.push(i);
		}
	}
	asciiTable.push(63);
	for (var i = 65; i <= 90; i++) {
		asciiTable.push(i);
	}
	for (var i = 97; i <= 122; i++) {
		asciiTable.push(i);
	}
	return asciiTable;
}

exports.lsbCC = 63;

exports.randomInt = function(min, max) {
	return Math.floor(Math.random() * (max - min + 1)) + min;
}

var getValueAsString = function(val) {
	if (this.getStringValue) {
		return this.getStringValue();
	}
	else if (this.isEnum()) {
		return this.getEnumString();
	}
	else if (this.valueToView) {
		return this.valueToView(this.value).toString();
	}
	else if (this.uiRange) {
		return Math.round(this.value + this.uiRange.min).toString();
	}
	else return this.value.toString();
}

var setValue = function(val) {
	if (this.onChange) {
		this.onChange(val);
	}
	else {
		this.value = val;
	}
	if (this.value < this.min || this.value > this.max) {
		post(this.name + ": value out of range. " + this.value + " vs (" + this.min + ", " + this.max + ")\n");
		if (this.value < this.min) this.value = this.min;
		else if (this.value > this.max) this.value = this.max;
	}
}

var setValueFromSysex = function(val) {
	var newval = val;
	if (this.isEnum()) {
		if (this.ascii || this.enumIndexToValue) {
			newval = val;
		}
		else {
			var e = this.getEnum();
			var range = (this.max - this.min) + 1;
			newval = Math.round(range / e.length) * val;
		}
	}
	this.setValue(newval);
}

// common code we can reuse for both CCs and NRPNs (and SYX)
var setValueFromView = function(val) {
	var newval = val;
	if (this.isEnum()) {
		if (this.enumIndexToValue) {
			newval = this.enumIndexToValue(val);
		}
		else {
			var e = this.getEnum();
			var range = (this.max - this.min) + 1;
			newval = Math.round(range / e.length) * val;
		}
	}
	else {
		if (this.viewToValue) {
			newval = this.viewToValue(val);
		}
		else if (this.uiRange) {
			newval = Math.round(val - this.uiRange.min) + this.min;
		}
	}
	this.setValue(newval);
}

var getValueForSysex = function() {
	var syxval = this.value;
	if (this.isEnum()) {
		if (this.ascii || this.enumIndexToValue) {
			; // already correct
		}
		else {
			syxval = this.getEnumIndex();
		}
	}
	return syxval;
}

var getValueForView = function() {
	var viewValue = this.value;
	if (this.isEnum()) {
		if (this.enumValueToIndex) {
			viewValue = this.enumValueToIndex(this.value);
		}
		else {
			viewValue = this.getEnumIndex();
		}
	}
	else {
		if (this.valueToView) {
			viewValue = this.valueToView(this.value);
		}
		else if (this.uiRange) {
			viewValue -= this.min;
			viewValue += this.uiRange.min;
		}
	}	
	return viewValue;
}

var setListenerValue = function() {
	if (this.listener) {
		this.listener.setvalue(this.getValueForView());
		return true;
	}
	return false;
}

exports.inputAssignEnum = [ 
	"GATE TIME", "PORTAMENTO", "V.M DEPTH", "VCO1 PITCH", "VCO1 SHAPE", "VCO2 PITCH", 
	"VCO2 SHAPE", "CROSS MOD", "MULTI SHAPE", "VCO1 LEVEL", "VCO2 LEVEL", "MULTI LEVEL",
	"CUTOFF", "RESONANCE", "A.EG ATTACK", "A.EG DECAY", "A.EG SUSTAIN", "A.EG RELEASE", 
	"EG ATTACK", "EG DECAY", "EG INT", "LFO RATE", "LFO INT", "MOD FX SPEED", 
	"MOD FX DEPTH", "REVERB TIME", "REVERB DEPTH", "DELAY TIME", "DELAY DEPTH" 
];

exports.postProcessParam = function(param) {
	param.isEnum = function() {
		return (this.enum || this.enumFn) ? true : false;
	};
	if (param.isEnum()) {
		param.getEnum = function() {
			var e = this.enumFn ? this.enumFn() : this.enum;
			return e;
		};
		param.getEnumIndex = function() {
			if (this.value === undefined) {
				this.value = 0;
			}
			if (this.enumValueToIndex) {
				return this.enumValueToIndex(this.value);
			}
			else {
				var e = this.getEnum();
				if (e.length) {
					var range = (this.max - this.min) + 1;
					var idx = Math.floor(e.length * (this.value / range)) - this.min;
					return idx;
				}
			}
			return -1;
		};
		param.getEnumString = function() {
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
	param.touch = function() { 
		if (param.value === undefined) param.value = 0;
		param.setValue(param.value);
		param.setListenerValue();
	};
	param.setValue = setValue;
	param.setValueFromView = setValueFromView;
	param.getValueForView = getValueForView;
	param.setListenerValue = setListenerValue;
	param.getValueAsString = getValueAsString;
	param.setValueFromSysex = setValueFromSysex;
	param.getValueForSysex = getValueForSysex;
}

exports.getMaxobjForParameter = function(name) {
	var pip = new ParameterInfoProvider();
	if (pip) {
		var info = pip.getinfo(name);
		if (info && info.maxobject) {
			return info.maxobject;
		}
	}
	return null;
}

// too bad that we need to use globals, but there no elegant way to communicate
// between required modules -- we need to access a CC parameter from NRPN, so we
// need a global manager to handle parameter lookup

exports.reset = function() {
	var g = new Global("mlxd_global");
	g.parameterHolders = [];
	g.programNameListener = null;
}

exports.registerParameterHolder = function(reqName) {
	var pHolder = require(reqName);
	if (pHolder) {
		var g = new Global("mlxd_global");
		g.parameterHolders.push(pHolder);
		return pHolder;
	}
	return null;
}

exports.getParamForName = function(name) {
	var g = new Global("mlxd_global");
	var parameterHolders = g.parameterHolders;
	for (var h in parameterHolders) {
		var pHolder = parameterHolders[h];
		var param = pHolder.findName(name);
		if (param) {
			return param;
		}
	}
	return null;
}

// file utils

exports.writeSysex = function(fname, bytes) {
	var f = new File(fname, "write", "Midi");
	if (f.isopen) {
		f.writebytes(bytes);
		f.eof = f.position;
		f.close();
		post("wrote sysex to " + fname + "\n");
		return;
	}
	post("error writing sysex to " + fname + "\n");
}

exports.readSysex = function(fname) {
	var f = new File(fname, "read");
	if (f.isopen) {
		var a = f.readbytes(f.eof);
		f.close();
		if (a) {
			post("read sysex from " + fname + "\n");
			return a;
		}
	}
	post("error reading sysex from " + fname + "\n");
	return null;
}
