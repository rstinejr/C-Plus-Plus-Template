#include "Board.hpp"

Cell::Cell()
  : _empty(true)
{
}

bool Cell::isEmpty()
{
    return _empty;
}

void Board::allocCells()
{
    for (int i = 0; i < MAX_ROW; i++)
       for (int j = 0; j < MAX_COL; j++)
           Matrix[i][j] = new Cell();
}

void Board::freeCells()
{
    for (int i = 0; i < MAX_ROW; i++)
        for (int j = 0; j < MAX_COL; j++)
	    delete Matrix[i][j];
}

Board::Board()
{
    allocCells();
}

Board::~Board()
{
    freeCells();
}

Cell * Board::cellAt(int i, int j)
{
    return Matrix[i][j];
}
