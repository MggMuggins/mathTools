module uio.printhelp;

import std.stdio : writeln;

void printHelp() {
	writeln("Help Sheet:");
	writeln("My program to find different significant values from a set of inputs.");
	writeln("Input values via args and Files. Any arguments left after defined POSIX args are parsed");
	writeln("are read into the input array. ");
	writeln("Significant value outputs currently supported include:");
	writeln("	Least Common Multiple");
	writeln("	Greatest Common Factor");
	writeln("	Biggest Number");
	writeln("	Smallest Number");
	writeln();
	writeln("Options:");
	writeln("--help, -h");
	writeln("		Display this help and exits. Overrides all other arguments.");
	writeln("--input, -i");
	writeln("		Uses numerical arguments as input. This option must be specified to take arguments!");
	writeln("--file, -f");
	writeln("		Reads input from a file specified as the next argument in the command. This must be a full file path!");
	writeln("--gcf, -g");
	writeln("		Prints the gcf of the input as part of the output. Uses 'GCF = [output]' as output format.");
	writeln("--lcm, -l");
	writeln("		Prints the lcm of the input as part of the output. Uses 'LCM = [output]' as output format.");
	writeln("--big, -b");
	writeln("		Prints the largest number from the input as part of the output. Uses 'Big = [output]' as output format.");
	writeln("--small, -s");
	writeln("		Prints the smallest number from the input as part of the output. Uses 'Small = [output]' as output format.");
}
