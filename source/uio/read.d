module uio.read;

import std.stdio, std.conv, std.file, std.string;

ulong[] readInput (string[] args) {
	int i = 1;
	ulong[] numbs;
	for(i = 1; i < args.length; ++i) {
		try {
			numbs ~= to!ulong(args[i]);
		} catch (std.conv.ConvException) {
			//Hopefully skip failed conversions
		}
	}
	return numbs;
}

ulong[] readFile (string[] args) {
	int i = 1;
	ulong[] numbs;
	File input;
	for(i = 1; i < args.length; ++i) {
		try {
			input = File(args[i], "r");
		} catch (std.exception.ErrnoException) {
		}
	} try {
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
	return numbs;
}
