#include "Board.hpp"

#include<iostream>

using namespace std;

int main()
{
	cout << "work on 2-D arrays." << endl;


	Board *b = new Board();

	Cell *c = b->cellAt(3,3);

	cout << "Cell at 3, 3 empty?: " << c->isEmpty() << endl;
	
	delete b;

	cout << "Done." << endl;

	return 0;
}
