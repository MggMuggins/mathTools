module oprtn.product;

ulong findProduct(ulong[] numbs) {
	ulong product = numbs[0];
	foreach (i; numbs) {
		product = i * product;
	}
	return product;
}
