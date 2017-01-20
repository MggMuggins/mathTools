module uio.getargs;

import std.stdio, std.string, std.getopt;
import data.argstate;

argState getArgs (string[] args) {
	argState argsState;
	try {
		getopt(args, 
			"help|h", &argsState.help, 
			"input|i", &argsState.inp, 
			"file|f", &argsState.file, 
			"lcm|l", &argsState.lcm, 
			"gcf|g", &argsState.gcf);
	} catch (std.conv.ConvException exc) {
		writeln("Problem with args:");
		writeln(exc.msg);
		return argsState;
	} catch  (std.getopt.GetOptException exc) {
		writeln("Problem with args:");
		writeln(exc.msg);
		return argsState;
	}
	return argsState;
}
