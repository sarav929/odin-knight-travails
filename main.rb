def knight_moves

end

def filter_moves(moves)
  filtered = []
  moves.each_with_index do |move, index|
    if moves[index][0] < 7 && moves[index][0] > 0 && moves[index][1] < 7 && moves[index][1] > 0
      filtered << move    
    end
  end
  filtered
end

def possible_moves(r, c)
  filter_moves(moves = [
    [r + 2, c + 1],
    [r + 2, c - 1],
    [r - 2, c + 1],
    [r - 2, c - 1],

    [r + 1, c + 2],
    [r + 1, c - 2],
    [r - 1, c + 2],
    [r - 1, c - 2]
  ])
end


# test

moves = possible_moves(7,3)

p moves


