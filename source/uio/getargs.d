module uio.getargs;

import std.stdio : writeln;
import std.getopt;
import data.argstate;

ArgState getArgs (string[] args) {
	ArgState argState;
	try {
		getopt(args,
			"help|h", &argState.help,
			"file|f", &argState.file,
			"lcm|l", &argState.lcm,
			"gcf|g", &argState.gcf,
			"big|b", &argState.big,
			"small|a", &argState.small,
			"sum|u", &argState.sum,
			"product|p", &argState.product,
			"sort|S", &argState.sort);
	} catch (std.conv.ConvException exc) {
		writeln("Problem with args:");
		writeln(exc.msg);
		return argState;
	} catch  (std.getopt.GetOptException exc) {
		writeln("Problem with args:");
		writeln(exc.msg);
		return argState;
	}
	argState.args = args;
	return argState;
}
