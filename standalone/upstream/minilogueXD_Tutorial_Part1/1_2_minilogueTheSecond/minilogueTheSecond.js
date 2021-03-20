autowatch = 1;
outlets = 1;

var cctls = [
	{ name: "VCO 1 PITCH", cc: 34, min: 0, max: 1023 },
	{ name: "VCO 1 LEVEL", cc: 39, min: 0, max: 1023 }
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
				val = getRandomInt(param.min, param.max);
			}
			if (param.max > 127) { // assume 10-bit
				var bit3 = val & 7; // 0x7 = binary 111; & 0x7 means give me the lower 3 bits
				var bit7 = val >> 3;  // shift the value 3 bits to the right, this gives up the upper 7 bits
				outlet(0, bit3, 63); // send the lower 3 bits to CC#63 first
				outlet(0, bit7, param.cc); // send the upper 7 bits to param.cc
			}
			else {
				outlet(0, val, param.cc);
			}
			break;
		}
	}
}
