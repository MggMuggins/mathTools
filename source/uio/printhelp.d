module uio.printhelp;

import std.stdio : writeln;

void printHelp() {
	writeln("Help Sheet:");
	writeln("My program to find different significant values from a set of inputs.");
	writeln("Input values via args and Files. Any arguments left after defined POSIX args are parsed");
	writeln("are read into the input array. ");
	writeln("Output:");
	writeln("math outputs in '[output string] = [output]'. The output strings are declared for each option.");
	writeln("Significant value outputs currently supported include:");
	writeln("	Least Common Multiple");
	writeln("	Greatest Common Factor");
	writeln("	Biggest Number");
	writeln("	Smallest Number");
	writeln("	Sum");
	writeln();
	writeln("Options:");
	writeln("--help, -h");
	writeln("		Display this help and exits. Overrides all other arguments.");
	writeln("--input, -i");
	writeln("		Uses numerical arguments as input. This option must be specified to take arguments!");
	writeln("--file, -f");
	writeln("		Reads input from a file specified as the next argument in the command. This must be a full file path!");
	writeln("--gcf, -g");
	writeln("		Prints the gcf of the input as part of the output. Uses 'GCF' as output string.");
	writeln("--lcm, -l");
	writeln("		Prints the lcm of the input as part of the output. Uses 'LCM' as output string.");
	writeln("--big, -b");
	writeln("		Prints the largest number from the input as part of the output. Uses 'Big' as output string.");
	writeln("--small, -s");
	writeln("		Prints the smallest number from the input as part of the output. Uses 'Small' as output string.");
	writeln("--sum");
	writeln("		Prints the sum of all the inputs. Uses 'Sum' as output string.");
	writeln("--product, -p");
	writeln("		Prints the product of all the inputs. Uses 'Product' as output string.");
}
