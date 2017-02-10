module data.argstate;

struct ArgState {
	bool help = false;
	bool inp = false;
	string file;
	bool lcm = false;
	bool gcf = false;
	bool big = false;
	bool small = false;
	string[] args;
}
