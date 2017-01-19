module inp;

import std.stdio, std.conv, std.file, std.string;
import help;

ulong[] getInp (bool help, bool file, bool inp, string[] args) {
	ulong[] numbs;
	string carry;
	int i = 0;
	File input;
	
	//Help and Errors...
	if ((help == true && inp == true) || (help == true && file == true)) {
		printHelp();
		return numbs;
	} if (file == true && inp == true) {
		writeln("Reading from two different input methods is not currently supported.");
		return numbs;
	} if (help == true) {
		printHelp();
		return numbs;
	} 
	
	//Actual Read Methods...
	if (inp == true && file == false) {
		for(i = 1; i < args.length; ++i) {
			numbs ~= to!ulong(args[i]);
		}
	} if (file == true && inp == false) {
		input = File(args[1], "r");
		while (!input.eof()) {
			i = 0;
			//This isn't working. It's hanging on line 35 and not continuing with execution, with only one condition check.
			writeln(i);
			//Carry is defined to split up the error for debugging. It will be removed before the release
			carry = strip(file.readln());
			
			writeln(carry);
			numbs ~= to!ulong(carry);
			++i;
		}
	}
	writeln(numbs);
	return numbs;
}
