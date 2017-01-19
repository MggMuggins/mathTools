import std.stdio, std.getopt;
import lib.inp, lib.put;

int main(string[] args) {
	ulong[] numbs;
	bool help = false, inp = false, file = false, gcf = false, lcm = false;
	
	try {
		getopt(args, "help|h", &help, "input|i", &inp, "file|f", &file, "lcm|l", &lcm, "gcf|g", &gcf);
	} catch (std.conv.ConvException exc) {
		writeln("Problem with args:");
		writeln(exc.msg);
		return 1;
	} catch  (std.getopt.GetOptException exc) {
		writeln("Problem with args:");
		writeln(exc.msg);
		return 1;
	}
	
	//writeln(args);
	numbs = getInp(help, file, inp, args);
	//An attempt to determine if Numbs is empty. Any better solution is wanted.
	if (numbs == null) {
		return 42;
	}
	
	printOut(numbs, lcm, gcf);
	return 0;
}
