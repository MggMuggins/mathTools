import uio.getinput, uio.printout, uio.getargs, data.argstate;

int main(string[] args) {
	ulong[] numbs;
	argState argsState = getArgs(args);
	
	numbs = getInp(argsState, args);
	//An attempt to determine if Numbs is empty. Any better solution is wanted.
	if (numbs == null) {
		return 42;
	}
	
	printOut(numbs, argsState);
	return 0;
}
