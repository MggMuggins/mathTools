/*
 * Not happy with Var names in this module!
 * Please Help!
 * 
*/

module lib.getinput;

import std.stdio, std.conv, std.file, std.string;
import lib.printhelp, data.argstate;

ulong[] getInp (argState args, string[] arguments) {
	ulong[] numbs;
	int i = 0;
	File input;
	
	//Help and Errors...
	if ((args.help && args.inp) || (args.help && args.file)) {
		printHelp();
		return numbs;
	} if (args.file && args.inp) {
		writeln("Reading from two different input methods is not currently supported.");
		return numbs;
	} if (args.help) {
		printHelp();
		return numbs;
	} 
	
	//Actual Read Methods...
	if (args.inp && args.file == false) {
		for(i = 1; i < arguments.length; ++i) {
			try {
				numbs ~= to!ulong(arguments[i]);
			} catch (std.conv.ConvException) {
				//Hopefully skip failed conversions
			}
		}
	} 
	//All these exceptions are a mess. Should really be cleaned up and probably exported to another file/function
	if (args.file && args.inp == false) {
		for(i = 1; i < arguments.length; ++i) {
			try {
				input = File(arguments[i], "r");
			} catch (std.exception.ErrnoException) {
				
			}
		}
		try {
			while (!input.eof()) {
				//Makes sure not to try and convert nothing to ulong, and exits if file has anything other than numbers
				try {
					numbs ~= to!ulong(strip(input.readln()));
				} catch (std.conv.ConvException) {
					break;
				}
			}
		} catch (object.Exception) {
			writeln("Improper Arg Usage; Include a file path!");
			return numbs;
		}
	}
	return numbs;
}
