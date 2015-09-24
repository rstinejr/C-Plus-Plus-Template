#include <Board.hpp>

using namespace my_board;

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
	_matrix = new Cell[_rows * _cols];
}

void Board::freeCells()
{
    delete [] _matrix;
}

Board::Board(int rows, int cols)
  : _rows(rows), _cols(cols)
{
    allocCells();
}

Board::~Board()
{
    freeCells();
}

Cell * Board::cellAt(int i, int j)
{
    return (i < 0 || i >= _rows || j < 0 || j >= _cols)
    		? (Cell *) 0
    		: & _matrix[i * _rows + j];
}

