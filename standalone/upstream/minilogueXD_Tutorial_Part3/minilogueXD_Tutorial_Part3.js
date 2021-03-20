autowatch = 1;

inlets = 3;
outlets = 3;

var utils = require("minilogueXD_utils");
utils.reset();

var cc = utils.registerParameterHolder("minilogueXD_cc");
var nrpn = utils.registerParameterHolder("minilogueXD_nrpn");
var syx = utils.registerParameterHolder("minilogueXD_syx");

var lastLowBits = -1;
var programNameListener;

function anything(val) {
	if (arguments.length) {
		updateAndOutput(messagename, val);
	}
}

function bang() {
	var params = cc.generateRandomValues();
	params = params.concat(nrpn.generateRandomValues());
	for (var p in params) {
		var param = params[p];
		param.setListenerValue();
		doOutput(param);
	}
}

function bind() {
	var pip = new ParameterInfoProvider();
	var names = pip.getnames();

	for (var n in names) {
		var name = names[n];
		var param = getParamForName(name);
		if (param) {
			param.listener = new ParameterListener(name, paramChanged);
			param.listener.silent = 1;
			param.setListenerValue();
			if (utils.debug) {
				post("bound to " + name + "\n");
			}
		}
	}

	// doing it this way due to a feedback bug in Max (fixed in the meantime)
	var programNameEditor = patcher.getnamed("View").subpatcher(0).getnamed("PROGRAM NAME LABEL");
	if (programNameEditor) {
		var g = new Global("mlxd_global");
		g.programNameListener = new MaxobjListener(programNameEditor, function(data) {
			var val = data.value.replace(/^\"/, "").replace(/\"$/, "");
			nrpn.updateProgramName.bind(this)(val);
		});
		g.programNameListener.silent = 1;
		nrpn.updateProgramName();
	}
}

// this function will be called once to generate the UI and never used again
function generate() {
	var params = cc.getInterfaceParams();
	params = params.concat(nrpn.getInterfaceParams());

	var x = 10;
	var y = 10;
  
	var patcherobj = this.patcher.newdefault(276, 39, "p", "View");
	var subpatcher = patcherobj.subpatcher(0);
	for (var p in params) {
		var param = params[p];
		var objcls = "live.dial";
		var isEnum = param.isEnum();
		var e = isEnum ? param.getEnum() : null;
		// does it have a 0/1 range? make it a live.toggle
		// is it an enum? make it a live.menu
		// otherwise it's a live.dial
		if ((!isEnum && param.max === 1)
			|| (e && e.length <= 2 && e[0] === "OFF")) 
		{
			// 2-item enums only if it's OFF/ON
			objcls = "live.toggle";
		}
		else if (isEnum) {
			objcls = "live.menu";
		}
		x = 10 + (72 * (p % 8));
		y = 10 + (70 * Math.floor(p / 8));

		var o = subpatcher.newdefault(x, y, objcls);

		if (objcls === "live.menu") {
			var r = o.getattr("patching_rect");
			r[2] = 48;
			o.setattr("patching_rect", r);
		}
		o.setattr("_parameter_longname", param.name);
		// generate a shortname
		var words = param.name.trim().split(" ");
		var sn = words.map(function(i){return i[0]}).join('').slice(0, -1);
		sn += " " + words[words.length - 1];
		o.setattr("_parameter_shortname", sn);
		o.varname = param.name;
		if (objcls !== "live.dial") {
			subpatcher.newdefault(x, y + 20, "comment", "@text", sn);
		}
		if (isEnum) {
			var e = param.getEnum();
			if (!e.length) {
				e = [ "(empty)", "(menu)" ];
			}
			o.setattr("_parameter_range", e);
		}
		else {
			o.setattr("_parameter_range", 
				param.uiRange ? param.uiRange.min : param.min, 
				param.uiRange ? param.uiRange.max : param.max);
			if (param.uiCentered && objcls === "live.dial") {
				o.setattr("triangle", 1);
			}
		}
		// we can't use type 1 (int) because it's limited to a range of 255 values
		// rather than having 2 types for 7/8-bit vs 10/14-bit params, just make
		// them all floats and set the unit style to int
		o.setattr("_parameter_unitstyle", 0); // integer unit style
		o.setattr("_parameter_type", objcls !== "live.dial" ? 2 : 0); // 2 = enum, 0 = float
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

		param.setValue(val);
		param.setListenerValue();

		if (utils.debug) {
			post("Received value " + val + " for " + param.name
				  + (isNrpn ? " (NRPN " : " (CC ") + index
				  + (param.enum ? ": " + param.getEnumString() : "")
				  + ")\n");
		}
	}
	lastLowBits = -1;
}

function getParamForName(name) {
	return utils.getParamForName(name);
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
	if (utils.debug) {
		post("change from " + data.name + ": " + Math.round(data.value) + "\n");
	}
	updateAndOutput(data.name, data.value, true);
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

function updateAndOutput(name, val, fromUI) {
	var param = getParamForName(name);
	if (param) {
		if (fromUI) {
			param.setValueFromView(Math.round(val));
		}
		else {
			param.setValue(Math.round(val));
		}
		doOutput(param);
	}
}
updateAndOutput.local = 1;

function req() {
	var bytes = syx.getEditBufferRequest();
	outlet(2, bytes);
}

function push() {
	var params = getAllParams();
	for (var p in params) {
		var param = params[p];
		if (syx.setInstrumentDataFromParameterValue(param)) {
			;
		}
	}
	outputBytes(syx.getEditBuffer());
}

function outputBytes(bytes) {
	outlet(2, bytes);
}
outputBytes.local = 1;

var receiveBuffer = [];
var testConversion = false;

function loadBytes(bytes) {
	if (syx.processEditBuffer(bytes) !== true) {
		return; // post("error processing edit buffer\n"); // this isn't always an error
	}
	else {
		post("processed incoming sysex buffer\n");
		var params = getAllParams();
		for (var p in params) {
			var param = params[p];
			if (syx.getParameterValueFromInstrumentData(param)) {
				param.setListenerValue();
			}
		}
	}
	if (testConversion) { // test that conversion is working
		var sendBuffer = syx.getEditBuffer();
		for (var i = 0; i < bytes.length; i++) {
			if (bytes[i] !== sendBuffer[i]) {
				post("buffer mismatch: byte " + i + "\n");
			}
		}
	}
}
loadBytes.local = true;

function recv(b) {
	if (b === 0xF0) { // new sysex
		receiveBuffer = [b];
	}
	else if (b === 0xF7) { // end of sysex
		receiveBuffer.push(b);
		loadBytes(receiveBuffer);
		receiveBuffer = [];
	}
	else if (b & 0x80) {
		post("bad sysex byte, aborting receive\n");
		receiveBuffer = [];
	}
	else if (receiveBuffer.length) {
		receiveBuffer.push(b);
	}
}

function getAllParams() {
	// reverse the list to ensure ordering of dependent params (dependencies initialized first)
	return (cc.getAllParams().concat(nrpn.getAllParams().concat(syx.getAllParams()))).reverse();
}
getAllParams.local = 1;

function initParams() {
	var params = getAllParams();
	for (var p in params) {
		var param = params[p];
		if (syx.getParameterValueFromInstrumentData(param)) { // init program
			if (utils.debug) {
				post("initialized " + param.name + " to " + param.value + "\n");
			}
		}
	}
}
initParams.local = 1;

function savesyx(fname) {
	if (fname) {
		utils.writeSysex(fname, syx.getEditBuffer());
	}
}

function loadsyx(fname) {
	if (fname) {
		bytes = utils.readSysex(fname);
		if (bytes) {
			loadBytes(bytes);
			outputBytes(bytes); // push to instrument, too, feels funny otherwise
		}
	}
}

function testreq() {
	req();
	var bytes = syx.getEditBuffer();
	var params = getAllParams();
	for (var p in params) {
		params[p].touch();
		syx.setInstrumentDataFromParameterValue(params[p]);
	}
	var bytes2 = syx.getEditBuffer();
	syx.compareEditBuffers(bytes, bytes2);
}

cc.init();
nrpn.init();
syx.init();

initParams();
