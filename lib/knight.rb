require_relative 'graph'

class Knight

  def possible_moves(position, graph_size)
    r = position[0]
    c = position[1]

    moves = [
      [r + 2, c - 1], [r + 2, c + 1],
      [r - 2, c - 1], [r - 2, c + 1],
      [r + 1, c - 2], [r + 1, c + 2],
      [r - 1, c - 2], [r - 1, c + 2]
    ]
    return moves.select {|r, c| r.between?(0, graph_size) && c.between?(0, graph_size) }
  end

end