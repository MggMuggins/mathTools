module uio.printout;

import std.stdio : writeln;
import oprtn.gcf, oprtn.lcm;
import oprtn.big, oprtn.small, oprtn.sum, oprtn.product, oprtn.quicksort;
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
	} if (argState.sort) {
		writeln("Sorted = ", quicksort(numbs));
	}
}
