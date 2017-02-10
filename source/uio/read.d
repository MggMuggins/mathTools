module uio.read;

import std.file; 
import std.stdio;
import std.conv : to;
import std.string : strip;

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

ulong[] readFile(string path) {
	ulong[] numbs;
	File input = File(path, "r");
	while (!input.eof()) {
		//Makes sure not to try and convert nothing to ulong, and exits if file has anything other than numbers
		try {
			numbs ~= to!ulong(strip(input.readln()));
		} catch (std.conv.ConvException) {
			break;
		}
	}
	return numbs;
}
