module data.argstate;

struct ArgState {
	string[] args;
	bool help = false;
	string file;
	bool lcm = false;
	bool gcf = false;
	bool average = false;
	bool median = false;
	bool big = false;
	bool small = false;
	bool sum = false;
	bool product = false;
	bool sort = false;
}
