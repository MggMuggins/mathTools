module oprtn.sum;

ulong findSum(ulong[] numbs) {
	ulong sum = 0;
	foreach (i; numbs) {
		sum = i + sum;
	}
	return sum;
}
