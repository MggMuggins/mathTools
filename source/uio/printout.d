module uio.printout;

import std.stdio;
import std.conv;
import oprtn.gcf, oprtn.lcm, oprtn.quicksort, oprtn.data;
import oprtn.big, oprtn.small, oprtn.sum, oprtn.product;
import data.argstate;

void printOut (ulong[] numbs, ArgState argState) {
	/* This is only a thing because it limits the number of times the program
	 * needs to calculate some values to once, reducing CPU usage. This sacrifices
	 * a tiny bit more RAM (or more than a tiny bit, since the size of the arguments
	 * array is arbitrary).
	 */
	ulong big, small, sum, product, average, median, lcm, gcf;
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
	} if (argState.average || argState.sum) {
		sum = findSum(numbs);
		if (argState.sum) {
			writeln("Sum = ", sum);
		}
	} if (argState.sort || argState.median) {
		sorted = quicksort(numbs, 0, to!(int)(numbs.length - 1));
		if (argState.sort) {
			writeln("Sorted = ", sorted);
		}
	}
	//UI only functions//
	if (argState.product) {
		product = findProduct(numbs);
		writeln("Product = ", product);
	} if (argState.lcm) {
		lcm = lcmOf(numbs, small);
		writeln("LCM = ", lcm);
	} if (argState.average) {
		average = getAverage(numbs, sum);
		writeln("Average = ", average);
	} if (argState.gcf) {
		gcf = gcfOf(numbs, big);
		writeln("GCF = ", gcf);
	} if (argState.median) {
		median = getMedian(sorted);
		writeln("Median = ", median);
	}
}
