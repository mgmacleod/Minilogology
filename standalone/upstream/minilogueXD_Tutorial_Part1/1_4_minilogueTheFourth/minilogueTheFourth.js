autowatch = 1;

inlets = 2;
outlets = 2;

var lastLowBits = -1;

var cctls = [
	{ name: "VCO 1 PITCH", cc: 34, min: 0, max: 1023 },
	{ name: "VCO 1 LEVEL", cc: 39, min: 0, max: 1023 }
];

var nrpns = [
	{ name: "VOICE MODE TYPE", nrpn: 0x10, min: 0, max: 4, enum: [ "ARP LATCH", "ARP", "CHORD", "UNISON", "POLY" ] },
	{ name: "MULTI SHAPE NOISE", nrpn: 0x14, min: 0, max: 1023 },
	{ name: "MULTI SHAPE VPM", nrpn: 0x15, min: 0, max: 1023 }
];

function getRandomInt(min, max) {
	return Math.floor(Math.random() * (max - min + 1)) + min;
}
getRandomInt.local = 1;

function getParamForName(name)
{
	for (var c in cctls) {
		var param = cctls[c];
		if (param.name === name) {
			return param;
		}
	}
	for (var n in nrpns) {
		var param = nrpns[n];
		if (param.name === name) {
			return param;
		}
	}
	return null;
}
getParamForName.local = 1;

function anything(val) {
	var name = messagename;
	var param = getParamForName(name);
	if (param) {
		if (val === undefined) {
			val = getRandomInt(param.min, param.max);
		}

		var whichOutlet = param.nrpn ? 0 : 1;
		var whichIndex = param.nrpn ? param.nrpn : param.cc;

		// store the current value in the parameter, we'll need it later
		param.value = val;

		if (param.max > 127) {
			var bit3 = val & 7;
			var bit7 = val >> 3;
			outlet(1, bit3, 63); // always CC #63 for extra bits
			outlet(whichOutlet, bit7, whichIndex);
		}
		else {
			outlet(whichOutlet, val, whichIndex);
		}
	}
}

function getParamForIndex(index, isNrpn) {
	if (isNrpn) {
		for (var n in nrpns) {
			var param = nrpns[n];
			if (param.nrpn === index) {
				return param;
			}
		}
	}
	else {
		for (var c in cctls) {
			var param = cctls[c];
			if (param.cc === index) {
				return param;
			}
		}
	}
	return null;
}
getParamForIndex.local = 1;

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
			val = (val << 3) | lastLowBits;
		}
		// store the current value in the parameter, we'll need it later
		param.value = val;

		// print to the Max window
		post("Received value " + val + " for " + param.name);
		if (isNrpn) {
			post("( NRPN " + index);
		}
		else {
			post("( CC " + index);
		}
		if (param.enum) {
			post(": " + param.enum[val]);
		}
		post(")\n");
	}
	lastLowBits = -1;
}
