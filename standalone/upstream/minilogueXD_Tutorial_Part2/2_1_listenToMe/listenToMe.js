autowatch = 1;

var dialListener = null;
var numberListener = null;

function setup() {
	if (!dialListener) {
		dialListener = new ParameterListener("dial", valueChanged);
		dialListener.silent = 1;
	}
	if (!numberListener) {
		numberListener = new ParameterListener("number", valueChanged);
		numberListener.silent = 1;
	}
}

function msg_int(v) {
	if (v < 0) v = 0;
	else if (v > 127) v = 127;
	dialListener.setvalue(v);
	numberListener.setvalue(v);
	// outlet(0, v);
}

function valueChanged(data) {
	if (data.name === "dial") {
		numberListener.setvalue(data.value);
	}
	else if (data.name === "number") {
		dialListener.setvalue(data.value);
	}
	outlet(0, data.value);
}
valueChanged.local = 1;

function bang() {
	setup();
}

function loadbang() {
	setup();
}

