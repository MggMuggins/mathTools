module lib.inp;

import std.stdio, std.conv, std.file, std.string;
import lib.help;

ulong[] getInp (bool help, bool file, bool inp, string[] args) {
	ulong[] numbs;
	string carry;
	int i = 0;
	File input;
	
	//Help and Errors...
	if ((help && inp) || (help && file)) {
		printHelp();
		return numbs;
	} if (file && inp) {
		writeln("Reading from two different input methods is not currently supported.");
		return numbs;
	} if (help) {
		printHelp();
		return numbs;
	} 
	
	//Actual Read Methods...
	if (inp && file == false) {
		for(i = 1; i < args.length; ++i) {
			numbs ~= to!ulong(args[i]);
		}
	} if (file && inp == false) {
		input = File(args[1], "r");
		while (!input.eof()) {
			carry = strip(input.readln());
			//Makes sure not to try and convert nothing to ulong
			if (!input.eof()) {
				numbs ~= to!ulong(carry);
			}
		}
	}
	return numbs;
}
