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
			"lcm", &argState.lcm,
			"gcf", &argState.gcf,
			"big", &argState.big,
			"small", &argState.small,
			"sum", &argState.sum,
			"product", &argState.product,
			"sort", &argState.sort,
			"average", &argState.average,
			"median", &argState.median,
			"mode", &argState.mode);
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
