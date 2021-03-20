autowatch = 1;
outlets = 1;

var cctls = [
	{ name: "VCO 1 PITCH", cc: 34 },
	{ name: "VCO 1 LEVEL", cc: 39 }
];

function getRandomInt(min, max) {
	return Math.floor(Math.random() * (max - min + 1)) + min;
}
getRandomInt.local = 1;

function anything(val) {
	var name = messagename;
	for (var c in cctls) {
		var param = cctls[c];
		if (param.name === name) {
			if (val === undefined) {
				val = getRandomInt(0, 127);
			}
			outlet(0, val, param.cc);
			break;
		}
	}
}
