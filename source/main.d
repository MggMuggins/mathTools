import std.stdio, std.getopt;
//import libMath;

ulong getInp (bool help, bool file, bool inp, string[] args);
void printHelp();
ulong big (ulong[] numbs);
ulong lcm (ulong[] numbs);

int main(string[] args) {
	ulong[] numbs;
	int i;
	File input;
	bool help = false, inp = false, file = false;
	
	try {
		getopt(args, "help|h", &help, "input|i", &inp, "file|f", &file);
	} catch (std.conv.ConvException exc) {
		writeln("Mistyped Argument");
		writeln(exc.msg);
		return 1;
	}
	
	//numbs[] = getInp(help, file, inp, args);
	if (numbs[] == null) {
		return 0;
	}
	
	//writeln("The least common multiple of ", numbs, " is ", lcm(numbs), ".");
	return 0;
}
