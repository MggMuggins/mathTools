module lib.printhelp;

import std.stdio;

void printHelp() {
	writeln("Help Sheet:");
	writeln("My program to find different significant values from a set of inputs.");
	writeln("Input values via args and/or Files. Any arguments left after defined POSIX args are parsed");
	writeln("are read into the input array. ");
	writeln("Significant value outputs currently supported include:");
	writeln("	Least Common Multiple");
	writeln("	Greatest Common Factor");
	writeln();
	writeln("Options:");
	writeln("--help, -h");
	writeln("		Display this help and exits. Overrides all other arguments.");
	writeln("--input, -i");
	writeln("		Uses numerical arguments as input. This option must be specified to take arguments!");
	writeln("--file, -f");
	writeln("		Reads input from a file instead of taking command line args.");
	writeln("--gcf, -g");
	writeln("		Prints the gcf as part of the output. Uses 'GCF = <output' as output format.");
	writeln("--lcm, -l");
	writeln("		Prints the lcm as part of the output. Uses 'LCM = <output' as output format.");
}
