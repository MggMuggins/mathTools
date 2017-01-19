import std.stdio, std.getopt;
import lib.lcm, lib.gcf, lib.inp;

int main(string[] args) {
	ulong[] numbs;
	bool help = false, inp = false, file = false;
	
	try {
		getopt(args, "help|h", &help, "input|i", &inp, "file|f", &file);
	} catch (std.conv.ConvException exc) {
		writeln("Mistyped Argument");
		writeln(exc.msg);
		return 1;
	}
	//writeln(args);
	numbs = getInp(help, file, inp, args);
	//An attempt to determine if Numbs is empty. Any better solution is wanted.
	if (numbs == null) {
		return 42;
	}
	
	writeln(gcfOf(numbs));
	return 0;
}
