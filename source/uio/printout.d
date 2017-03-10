module uio.printout;

import std.stdio;
import std.conv;
import oprtn.gcf, oprtn.lcm, oprtn.quicksort;
import oprtn.big, oprtn.small, oprtn.sum, oprtn.product;
import data.argstate;

void printOut (ulong[] numbs, ArgState argState) {
	/* This is only a thing because it limits the number of times the program
	 * needs to calculate some values to once, reducing CPU usage. This sacrifices
	 * a tiny bit more RAM (or more than a tiny bit, since the size of the arguments
	 * array is arbitrary).
	 */
	ulong big, small, sum, product, lcm, gcf;
	ulong[] sorted;
	//Required values for other functions//
	if (argState.big || argState.lcm) {
		big = findBig(numbs);
		if (argState.big) {
			writeln("Big = ", big);
		}
	} if (argState.small || argState.gcf) {
		small = findSmall(numbs);
		if (argState.small) {
			writeln("Small = ", small);
		}
	}
	//UI only functions//
	if (argState.sum) {
		sum = findSum(numbs);
		writeln("Sum = ", sum);
	} if (argState.product) {
		product = findProduct(numbs);
		writeln("Product = ", product);
	} if (argState.lcm) {
		lcm = lcmOf(numbs, small);
		writeln("LCM = ", lcm);
	} if (argState.gcf) {
		gcf = gcfOf(numbs, big);
		writeln("GCF = ", gcf);
	} if (argState.sort) {
		sorted = quicksort(numbs, 0, to!(int)(numbs.length - 1));
		writeln("Sorted = ", sorted);
	}
}
