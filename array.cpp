
#include<iostream>

using namespace std;

class Cell
{
private:
	bool _empty;
public:		
	Cell()
	{
		_empty = true;
	}
	bool isEmpty()
	{
		return _empty;
	}
};

class Board
{
private:
    static const int MAX_ROW = 20;
    static const int MAX_COL = 20;
	Cell  * Matrix[MAX_ROW] [MAX_COL];

	void allocCells()
	{
	    for (int i = 0; i < MAX_ROW; i++)
		    for (int j = 0; j < MAX_COL; j++)
		 	 	Matrix[i][j] = new Cell();
	}

	void freeCells()
	{
	    for (int i = 0; i < MAX_ROW; i++)
		    for (int j = 0; j < MAX_COL; j++)
		 	 	delete Matrix[i][j];
	}

public:
	Board()
	{
		allocCells();
	}

	~Board()
	{
		freeCells();
	}

	Cell * cellAt(int i, int j)
	{
		return Matrix[i][j];
	}
};

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
