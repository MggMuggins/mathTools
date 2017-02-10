module uio.printout;

import std.stdio : writeln;
import oprtn.gcfof, oprtn.lcmof, data.argstate;

void printOut (ulong[] numbs, ArgState argState) {
	if (argState.lcm) {
		writeln("LCM = ", lcmOf(numbs));
	} if (argState.gcf) {
		writeln("GCF = ", gcfOf(numbs));
	}
}
