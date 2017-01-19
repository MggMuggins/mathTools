module lib.printhelp;

import std.stdio;

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
