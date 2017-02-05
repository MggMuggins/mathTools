/*
 * Not happy with Var names in this module!
 * Please Help!
 * 
*/

module uio.getinput;

import std.stdio : writeln;
import uio.printhelp, uio.read, data.argstate;

ulong[] getInp (argState args, string[] arguments) {
	ulong[] numbs;
	int i = 0;
	
	if ((args.help && args.inp) || (args.help && args.file)) {
		printHelp();
		return numbs;
	} if (args.file && args.inp) {
		writeln("Reading from two different input methods is not currently supported.");
		return numbs;
	} if (args.help) {
		printHelp();
		return numbs;
	} 
	
	if (args.inp && args.file == false) {
		numbs = readInput(arguments);
	} if (args.file && args.inp == false) {
		numbs = readFile(arguments);
	}
	return numbs;
}
