module uio.getargs;

import std.stdio : writeln; 
import std.getopt;
import data.argstate;

ArgState getArgs (string[] args) {
	ArgState argState;
	try {
		getopt(args, 
			"help|h", &argState.help, 
			"input|i", &argState.inp, 
			"file|f", &argState.file, 
			"lcm|l", &argState.lcm, 
			"gcf|g", &argState.gcf);
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
