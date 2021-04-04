autowatch = 1;

inlets = 2;
outlets = 2;

var cc = require("minilogueXD_cc");
var nrpn = require("minilogueXD_nrpn");

var debug = true;

var lastLowBits = -1;

function anything(val) {
	if (arguments.length) {
		updateAndOutput(messagename, val);
	}
}

function bang() {
	var params = cc.generateRandomValues();
	params = params.concat(nrpn.generateRandomValues());
	for (var p in params) {
		doOutput(params[p]);
	}
}

function bind() {
    var param = getParamForName("VCO 1 PITCH");
    if (param) {
        param.listener = new ParameterListener("VCO 1 PITCH", paramChanged);
        param.listener.silent = 1;
        post("bound to VCO 1 PITCH\n");
    }
}

function incoming(val, index)
{
	var isNrpn = (inlet == 0); // message in left inlet
	var isCc = !isNrpn; // the opposite of isNrpn (NOT left inlet)

	if (isCc && index == 63) { // CC#63 is used for low bits of values > 127
		lastLowBits = val; // cache the low bits
		return;
	}

	var param = getParamForIndex(index, isNrpn);
	if (param) {
		if (lastLowBits !== -1) {
			if (param.max < 128) { // 7-bit
				; // this would be an error, in fact, but just ignore it
			}
			else if (param.max < 256) { // 8-bit
				val = (val << 3) | lastLowBits; // 5 + 3 bits
			}
			else if (param.max < 1024) { // 10-bit
				val = (val << 3) | lastLowBits; // 7 + 3 bits
			}
			else { // 14-bit
				val = (val << 7) | lastLowBits; // 7 + 7 bits
			}
		}

		param.value = val;
		if (param.listener) {
			param.listener.setvalue(param.value);
		}

		if (debug) {
			post("Received value " + val + " for " + param.name
				  + (isNrpn ? " (NRPN " : " (CC ") + index
				  + (param.enum ? ": " + param.enum[interfaceValue] : "")
				  + ")\n");
		}
	}
	lastLowBits = -1;
}

function getParamForName(name) {
	var param = cc.findName(name);
	if (param) return param;

	param = nrpn.findName(name);
	if (param) return param;

	return null;
}
getParamForName.local = 1;

function getParamForIndex(index, isNrpn) {
	var param = null;
	if (isNrpn) {
		param = nrpn.findIndex(index);
	}
	else {
		param = cc.findIndex(index);
	}
	return param;
}
getParamForIndex.local = 1;

function paramChanged(data) {
	if (debug) {
		post("change from " + data.name + ": " + Math.round(data.value) + "\n");
	}
	updateAndOutput(data.name, data.value);
}
paramChanged.local = 1;

function doOutput(param) {
	// retrieve an object containing a cc array, an nrpn array, or both
	// first process the cc array (it may contain the low bits of an NRPN value)
	// then process the nrpn array, if it exists
	var op = param.getOutput();
	if (op.cc) {
		for (var o in op.cc) {
			outlet(1, op.cc[o])			
		}
	}
	if (op.nrpn) {
		for (var o in op.nrpn) {
			outlet(0, op.nrpn[o])			
		}
	}
}
doOutput.local = 1;

function updateAndOutput(name, val) {
	var param = getParamForName(name);
	if (param) {
		param.value = Math.round(val);
		doOutput(param);
	}
}
updateAndOutput.local = 1;

cc.init();
nrpn.init();
