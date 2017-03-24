module oprtn.gcf;

//gcf will find the gcf of the contents of the array that is given to it
ulong gcfOf (ulong[] numbs, ulong cand) {
	//Needs Optimizations
	++cand;
	while (1) {
	--cand;
		foreach (i; numbs) {
			if (i % cand != 0) {
				break;
			}
		} if (i == numbs.length) {
			break;
		}
	}
	return cand;
	
	//Base for Euclid's Algorithm
	//int k = 0;
}
