module oprtn.lcm;

import oprtn.big;

//lcm Finds the lcm of the contents of the array that is given to it
ulong lcmOf (ulong[] numbs, ulong cand) {
	//Needs Optimizations
	int i;
	while (1) {
		for(i = 0; i < numbs.length; ++i) {
			if (cand % numbs[i] != 0) {
				break;
			}
		} if (i == numbs.length) {
			break;
		}
		++cand;
	}
	return cand;
}
