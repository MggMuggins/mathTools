module uio.printout;

import std.stdio : writeln;
import oprtn.gcfof, oprtn.lcmof, oprtn.findbig, oprtn.findsmall, data.argstate;

void printOut (ulong[] numbs, ArgState argState) {
	writeln(numbs);
	if (argState.lcm) {
		writeln("LCM = ", lcmOf(numbs));
	} if (argState.gcf) {
		writeln("GCF = ", gcfOf(numbs));
	} if (argState.big) {
		writeln("Big = ", findBig(numbs));
	} if (argState.small) {
		writeln("Small = ", findSmall(numbs));
	}
}
