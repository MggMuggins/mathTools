module lib.printout;

import std.stdio;
import lib.gcfOf, lib.lcmOf, lib.getinput, data.argstate;

void printOut (ulong[] numbs, argState args) {
	if (args.lcm) {
		writeln("LCM = ", lcmOf(numbs));
	} if (args.gcf) {
		writeln("GCF = ", gcfOf(numbs));
	}
}
