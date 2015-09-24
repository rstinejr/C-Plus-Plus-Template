#ifndef BOARD_HPP
#define BOARD_HPP

namespace my_board
{
class Cell
{
private:
    bool _empty;
public:		
    Cell();
    bool isEmpty();
};

class Board
{
private:
	const int _rows;
	const int _cols;

    Cell  *_matrix;

    void allocCells();

    void freeCells();

public:
    Board(int rows, int cols);
    ~Board();
    Cell * cellAt(int i, int j);
};
}
#endif
