autowatch = 1;
outlets = 2;

var cctls = [
	{ name: "VCO 1 PITCH", cc: 34, min: 0, max: 1023 },
	{ name: "VCO 1 LEVEL", cc: 39, min: 0, max: 1023 }
];

var nrpns = [
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
