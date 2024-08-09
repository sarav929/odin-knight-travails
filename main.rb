require_relative 'lib/graph'
require_relative 'lib/knight'

BOARD_SIZE = 8

chessboard = Graph.new(BOARD_SIZE)
knight = Knight.new

knight.print_path(knight.knight_moves([3,3],[4,3]))

