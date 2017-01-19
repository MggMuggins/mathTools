module big;

//big finds the largest number out of the contents of the array provided
ulong largest (ulong[] numbs) {
	ulong big = numbs[0];
	int i;
	for (i = 1; i < numbs.length; ++i) {
		if (i > big) {
			big = numbs[i];
		}
	}
	return big;
}
