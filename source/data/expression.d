module data.expression;

struct term {
	long coef;
	char var;
	long degree;
	
	term mult() {
		return 
	}
}

struct biNom {
	long constant;
	term stand;
}

struct triNom {
	long constant;
	term stand;
	term squared;
}
