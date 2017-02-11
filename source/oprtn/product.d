module oprtn.product;

ulong findProduct(ulong[] numbs) {
	int i = 1;
	ulong product = numbs[0];
	for(i = 1; i < numbs.length; ++i) {
		product = numbs[i] * product;
	}
	return product;
}
