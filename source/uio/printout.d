module uio.printout;

import std.stdio : writeln;
import oprtn.gcfof, oprtn.lcmof;
import oprtn.findbig, oprtn.findsmall, oprtn.sum, oprtn.product;
import data.argstate;

void printOut (ulong[] numbs, ArgState argState) {
	if (argState.lcm) {
		writeln("LCM = ", lcmOf(numbs));
	} if (argState.gcf) {
		writeln("GCF = ", gcfOf(numbs));
	} if (argState.big) {
		writeln("Big = ", findBig(numbs));
	} if (argState.small) {
		writeln("Small = ", findSmall(numbs));
	} if (argState.sum) {
		writeln("Sum = ", findSum(numbs));
	} if (argState.product) {
		writeln("Product = ", findProduct(numbs));
	}
}
