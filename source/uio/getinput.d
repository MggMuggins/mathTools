module uio.getinput;

import std.stdio : writeln;
import uio.printhelp, uio.read, data.argstate;

ulong[] getInp (ArgState argState) {
	ulong[] numbs;
	int i = 0;
	
	if ((argState.help && argState.inp) || (argState.help && argState.file) || argState.help) {
		printHelp();
		return numbs;
	}
	
	if ((argState.file !is null) && argState.inp) {
		numbs = readInput(argState.args) ~ readFile(argState.file);
		return numbs;
	} if (argState.inp) {
		numbs = readInput(argState.args);
	} if (argState.file !is null) {
		numbs = readFile(argState.file);
	}
	return numbs;
}
