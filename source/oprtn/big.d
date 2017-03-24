module oprtn.big;

ulong findBig (ulong[] numbs) {
	ulong big = numbs[0];
	foreach (i; numbs) {
		if (i > big) {
			big = i;
		}
	}
	return big;
}
