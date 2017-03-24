module oprtn.lcm;

//lcm Finds the lcm of the contents of the array that is given to it
ulong lcmOf (ulong[] numbs, ulong cand) {
	//Needs Optimizations
	while (1) {
		foreach (i; numbs) {
			if (cand % i != 0) {
				break;
			}
		} if (i == numbs.length) {
			break;
		}
		++cand;
	}
	return cand;
}
