module data.argstate;

struct ArgState {
	bool help = false;
	bool inp = false;
	string file;
	bool lcm = false;
	bool gcf = false;
	string[] args;
}
