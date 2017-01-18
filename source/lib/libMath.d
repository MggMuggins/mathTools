module lib;

import std.stdio, std.string, std.conv, std.file;

void printHelp() {
	writeln("Help Sheet:");
	writeln("My program to find different significant values from a set of inputs.");
	writeln("Input values via args and/or Files. Any arguments left after defined POSIX args are parsed");
	writeln("are read into the input array. ");
	writeln();
	writeln("Options:");
	writeln("--help, -h");
	writeln("		Display this help and exits. Overrides all other arguments.");
	writeln("--input, -i");
	writeln("		Uses numerical arguments as input.");
	writeln("--file, -f");
	writeln("		Reads input from a file instead of taking command line args.");
}

ulong[] getInp (bool help, bool file, bool inp, string[] args) {
	ulong[] numbs;
	int i = 0;
	File input;
	if ((help == true && inp == true) || (help == true && file == true)) {
		printHelp();
		return numbs;
	} if (file == true && inp == true) {
		writeln("Reading from two different input methods is not currently supported.");
		return numbs;
	} if (help == true) {
		printHelp();
		return numbs;
	} if (inp == true && file == false) {
		for(i = 1; i < args.length; ++i) {
			numbs ~= to!ulong(args[i]);
		}
	} if (file == true && inp == false) {
		input = File(args[1], "r");
		while (!input.eof()) {
			i = 0;
			numbs[i] = to!ulong(strip(file.readln()));
			++i;
		}
	}
	writeln(numbs);
	return numbs;
}

//big finds the largest number out of the contents of the array provided
ulong big (ulong[] numbs) {
	ulong big = numbs[0];
	int i;
	for (i = 1; i < numbs.length; ++i) {
		if (i > big) {
			big = numbs[i];
		}
	}
	return big;
}

//lcm Finds the lcm of the contents of the array that is given to it
ulong lcm (ulong[] numbs) {
	//Needs Optimizations
	bool comMult = false;
	int i;
	ulong cand = big(numbs);
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

//gcf will find the gcf of the contents of the array that is given to it
ulong gcf (ulong[] numbs) {
	ulong cand;
	
	return cand;
}
