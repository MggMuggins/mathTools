module oprtn.gcf;

import oprtn.small;

//gcf will find the gcf of the contents of the array that is given to it
ulong gcfOf (ulong[] numbs) {
	//Needs Optimizations
	ulong cand = findSmall(numbs) + 1;
	int i;
	while (1) {
	--cand;
		for(i = 0; i < numbs.length; ++i) {
			if (numbs[i] % cand != 0) {
				break;
			} 
		} if (i == numbs.length) {
			break;
		}
	}
	return cand;
}
