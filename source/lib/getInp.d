module inp;

import std.stdio, std.conv, std.file, std.string;
import help;

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
	//writeln(numbs);
	return numbs;
}
