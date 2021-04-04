exports.setupAsciiTable = function() {
	var asciiTable = [];
	for (var i = 32; i <= 58; i++) {
		if (i != 34 && i != 43) {
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
