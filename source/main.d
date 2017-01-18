import std.stdio, std.getopt;
import lib;

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
	writeln(args);
	numbs  ~= 0;
	numbs = getInp(help, file, inp, args);
	//An attempt to determine if Numbs is empty. Any better solution is wanted.
	if (numbs[0] == 0) {
		return 42;
	}
	
	writeln(lcm(numbs));
	return 0;
}
