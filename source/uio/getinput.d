/*
 * Not happy with Var names in this module!
 * Please Help!
 * 
*/

module uio.getinput;

import std.stdio : writeln;
import uio.printhelp, uio.read, data.argstate;

ulong[] getInp (argState args) {
	ulong[] numbs;
	int i = 0;
	
	if ((args.help && args.inp) || (args.help && args.file) || args.help) {
		printHelp();
		return numbs;
	}
	
	if ((args.file !is null) && args.inp) {
		numbs = readInput(args.args) ~ readFile(args.file);
		return numbs;
	} if (args.inp) {
		numbs = readInput(args.args);
	} if (args.file !is null) {
		numbs = readFile(args.file);
	}
	return numbs;
}
