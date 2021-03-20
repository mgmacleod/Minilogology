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
		var param = params[p];
		var interfaceValue = param.isEnum() ? param.getEnumIndex() : param.value;
		if (param.listener) {
			param.listener.setvalue(interfaceValue);
		}
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
			if (debug) {
				post("bound to " + name + "\n");
			}
		}
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
			o.setattr("_parameter_range", param.min, param.max);
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

		param.value = val;
		var interfaceValue = param.isEnum() ? param.getEnumIndex() : param.value;
		if (param.listener) {
			param.listener.setvalue(interfaceValue);
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
		param.setValueFromView(Math.round(val));
		doOutput(param);
	}
}
updateAndOutput.local = 1;

cc.init();
nrpn.init();
