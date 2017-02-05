module uio.printout;

import std.stdio : writeln;
import oprtn.gcfof, oprtn.lcmof, data.argstate;

void printOut (ulong[] numbs, argState args) {
	if (args.lcm) {
		writeln("LCM = ", lcmOf(numbs));
	} if (args.gcf) {
		writeln("GCF = ", gcfOf(numbs));
	}
}
