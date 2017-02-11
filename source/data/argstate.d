module data.argstate;

struct ArgState {
	string[] args;
	bool help = false;
	bool inp = false;
	string file;
	bool lcm = false;
	bool gcf = false;
	bool big = false;
	bool small = false;
	bool sum = false;
	bool product = false;
}
