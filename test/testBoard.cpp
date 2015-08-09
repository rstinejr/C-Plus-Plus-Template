#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE Board
#include <boost/test/unit_test.hpp>
#include "../Board.hpp"

BOOST_AUTO_TEST_CASE(cellStartsEmpty)
{
    Board board;
    BOOST_CHECK(board.cellAt(3,3)->isEmpty());
}
