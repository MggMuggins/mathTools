module lib.put;

import std.stdio;
import lib.gcf, lib.lcm, lib.inp;

void printOut (ulong[] numbs, bool lcm, bool gcf) {
	if (lcm) {
		writeln("LCM = ", lcmOf(numbs));
	} if (gcf) {
		writeln("GCF = ", gcfOf(numbs));
	}
}
