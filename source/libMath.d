import std.stdio, std.string, std.conv, std.file;

void printHelp() {
	writeln("Help Sheet:");
	writeln("My program to find different significant values from a set of inputs.");
	writeln("Input values via args and/or Files. Any arguments left after defined POSIX args are parsed");
	writeln("are read into the input array. ");
	writeln();
	writeln("Options:");
	writeln("--help, -h");
	writeln("		Display this help and exits.");
	writeln("--input, -i");
	writeln("		Uses numerical arguments as input.");
	writeln("--file, -f");
	writeln("		Reads input from a file instead of taking command line args.");
}

extern(C) ulong[] getInp (bool help, bool file, bool inp, string[] args) {
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
		for(i = 0; i < args.length; ++i) {
			numbs[i] = to!ulong(args[i]);
		}
	} if (file == true && inp == false) {
		input = File(args[0], "r");
		while (!input.eof()) {
			i = 0;
			numbs[i] = to!ulong(strip(file.readln()));
			++i;
		}
	}
	return numbs;
}

ulong big (ulong[] numbs) {
	ulong big = numbs[0];
	foreach(i; numbs) {
		if (i > big) {
			big = numbs[i];
		}
	}
	return big;
}

extern(C) ulong lcm (ulong[] numbs) {
	bool comMult = false;
	int i;
	ulong lcm = big(numbs);
	while (comMult == false) {
		for(i = 0; i < numbs.length; ++i) {
			if (lcm % numbs[i] != 0) {
				comMult = false;
				break;
			} 
		} if (i == numbs.length) {
			comMult = true;
		}
		++lcm;
	}
	return lcm;
}
