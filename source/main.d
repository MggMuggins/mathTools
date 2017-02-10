import uio.getinput, uio.printout, uio.getargs, data.argstate;

int main(string[] args) {
	ulong[] numbs;
	ArgState argState = getArgs(args);
	
	numbs = getInp(argState);
	//An attempt to determine if Numbs is empty. Any better solution is wanted.
	if (numbs == null) {
		return 42;
	}
	
	printOut(numbs, argState);
	return 0;
}
