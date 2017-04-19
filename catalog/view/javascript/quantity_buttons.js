var whiteCount = 1;
var blackCount = 1;

const MAX_COUNT = 100;

function increaseWhite() {
	if (whiteCount < MAX_COUNT) {
		whiteCount++;
	}

	updateWhite();
}

function decreaseWhite() {
	if (whiteCount > 1) {
		whiteCount--;
	}

	updateWhite();
}

function onWhiteUpdate() {
	var value = $("#quantity_white").val();
	value = parseInt(value);
	if (!isNaN(value)) {
		value = Math.abs(value);
		whiteCount = value <= MAX_COUNT ? value : MAX_COUNT;
	}

	updateWhite();
}

function updateWhite() {
	$("#quantity_white").val(whiteCount);
}

function increaseBlack() {
	if (blackCount < MAX_COUNT) {
		blackCount++;
	}

	updateBlack();
}

function decreaseBlack() {
	if (blackCount > 1) {
		blackCount--;
	}

	updateBlack();
}

function onBlackUpdate() {
	var value = $("#quantity_black").val();
	value = parseInt(value);
	if (!isNaN(value)) {
		value = Math.abs(value);
		blackCount = value <= MAX_COUNT ? value : MAX_COUNT;
	}

	updateBlack();
}

function updateBlack() {
	$("#quantity_black").val(blackCount);
}