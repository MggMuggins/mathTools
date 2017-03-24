module oprtn.small;

//small finds the smallest number out of the contents of the array provided
ulong findSmall (ulong[] numbs) {
	ulong small = numbs[0];
	foreach (i; numbs) {
		if (i < small) {
			small = i;
		}
	}
	return small;
}
