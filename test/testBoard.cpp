#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE Board
#include <boost/test/unit_test.hpp>
#include <Board.hpp>

using namespace my_board;

BOOST_AUTO_TEST_CASE(cellStartsEmpty)
{
    Board board(11, 13);
    BOOST_CHECK(board.cellAt(3,3)->isEmpty());
}
