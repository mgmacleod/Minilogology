autowatch = 1;

var fixMsg = [ 0xB0, 99, 0 ];
var termMsg = [ 0xB0, 101, 127, 0xB0, 100, 127 ];

var cc99arrived = [];
var collecting = [];

function msg_int(d) {
	if (d === 176) { // a CC
		collecting = [d];
	}
	else if (collecting.length) {
		collecting.push(d);
		if (collecting.length === 3) {
			if (collecting[1] === 98) {
				if (cc99arrived.length) {
					; // no fix necessary. firmware update?
				}
				else {
					for (var i in fixMsg) {
						outlet(0, fixMsg[i]);
					}
				}
			}
			if (collecting[1] === 99) {
				cc99arrived = collecting;
			}
			else {
				cc99arrived = [];
			}

			if (collecting[1] === 98 
				|| collecting[1] === 99 
				|| collecting[1] === 6 
				|| collecting[1] === 38) 
			{
				for (var i in collecting) {
					outlet(0, collecting[i]);
				}
				collecting = [];
			}
			else {
				for (var i in termMsg) {
					outlet(0, termMsg[i]);
				}
			}
		}
	}
	else {
		// outlet(0, d);
		collecting = [];
		cc99arrived = [];
	}
}
