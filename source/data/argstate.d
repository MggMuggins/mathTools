module data.argstate;

struct argState {
	bool help = false;
	bool inp = false;
	string file;
	bool lcm = false;
	bool gcf = false;
	string[] args;
}
