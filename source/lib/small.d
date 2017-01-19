module small;

//small finds the smallest number out of the contents of the array provided
ulong smallest (ulong[] numbs) {
	ulong small = numbs[0];
	int i;
	for (i = 1; i < numbs.length; ++i) {
		if (numbs[i] < small) {
			small = numbs[i];
		}
	}
	return small;
}
