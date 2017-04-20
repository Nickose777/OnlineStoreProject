var quantities = new Array();

const MAX_COUNT = 100;

function increase(index) {
	var value = quantities[index];

	if (value === undefined) {
		value = 1;
	}

	if (value < MAX_COUNT) {
		quantities[index] = value + 1;
		updateQuantity(index, quantities[index]);
	}
}

function decrease(index) {
	var value = quantities[index];

	if (value === undefined) {
		value = 1;
	}

	if (value > 1) {
		quantities[index] = value - 1;
		updateQuantity(index, quantities[index]);
	}
}

function onQuantityUpdate(index) {
	var value = $("#quantity" + index).val();
	value = parseInt(value);
	if (!isNaN(value)) {
		value = Math.abs(value);
		value = value <= MAX_COUNT ? value : MAX_COUNT;
	}
	else {
		value = quantities[index];
		if (value === undefined) {
			value = 1;
		}
	}

	quantities[index] = value;
	updateQuantity(index, value);
}

function updateQuantity(index, newValue) {
	$("#quantity" + index).val(newValue);
}