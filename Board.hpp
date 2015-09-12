#ifndef BOARD_HPP
#define BOARD_HPP

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
    static const int MAX_ROW = 20;
    static const int MAX_COL = 20;
    Cell  * Matrix[MAX_ROW] [MAX_COL];

    void allocCells();

    void freeCells();

public:
    Board();
    ~Board();
    Cell * cellAt(int i, int j);
};

#endif
