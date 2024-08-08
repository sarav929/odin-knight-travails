require_relative 'lib/graph'
require_relative 'lib/knight'

BOARD_SIZE = 8

p chessboard = Graph.new(BOARD_SIZE)

knight = Knight.new

p knight.possible_moves([3,3], chessboard.size) 

