module gcf;

import small;

//gcf will find the gcf of the contents of the array that is given to it
ulong gcfOf (ulong[] numbs) {
	//Needs Optimizations
	ulong cand = smallest(numbs) + 1;
	int i;
	bool comFact = false;
	while (comFact == false) {
	--cand;
		for(i = 0; i < numbs.length; ++i) {
			if (numbs[i] % cand != 0) {
				comFact = false;
				break;
			} 
		} if (i == numbs.length) {
			comFact = true;
		}
	}
	return cand;
}
