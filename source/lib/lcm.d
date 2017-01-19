module lcm;

import big;

//lcm Finds the lcm of the contents of the array that is given to it
ulong lcmOf (ulong[] numbs) {
	//Needs Optimizations
	bool comMult = false;
	int i;
	ulong cand = largest(numbs);
	while (comMult == false) {
		for(i = 0; i < numbs.length; ++i) {
			if (cand % numbs[i] != 0) {
				comMult = false;
				break;
			} 
		} 
		++cand;
		if (i == numbs.length) {
			comMult = true;
			--cand;
		}
	}
	return cand;
}
