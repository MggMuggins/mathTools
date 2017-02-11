module oprtn.sum;

ulong findSum(ulong[] numbs) {
	int i = 1;
	ulong sum = numbs[0];
	for(i = 1; i < numbs.length; ++i) {
		sum = numbs[i] + sum;
	}
	return sum;
}
