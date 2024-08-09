require_relative 'graph'

class Knight

  def possible_moves(position)
    r = position[0]
    c = position[1]

    moves = [
      [r + 2, c - 1], [r + 2, c + 1],
      [r - 2, c - 1], [r - 2, c + 1],
      [r + 1, c - 2], [r + 1, c + 2],
      [r - 1, c - 2], [r - 1, c + 2]
    ]
    return moves.select {|r, c| r.between?(0, BOARD_SIZE - 1) && c.between?(0, BOARD_SIZE - 1) }
  end

  def knight_moves(start, finish)

    return [start] if start == finish 

    queue = [start]
    visited = Array.new(BOARD_SIZE) {Array.new(BOARD_SIZE, false)}
    prev = {}

    until queue.empty?    
      current = queue.shift 
      return get_path(prev, start, finish) if current == finish

      unless visited[current[0]][current[1]]
        visited[current[0]][current[1]] = true
         
        possible_moves(current).each do |move|
          unless visited[move[0]][move[1]]
            queue << move
            prev[move] = current
          end
        end
      end
    end
    []
  end
  


  def get_path(prev, start, finish)
    path = []
    current = finish
    while current
      path.push(current)
      current = prev[current]
    end
    return path.reverse
  end

  def print_path(path)
    puts "You made it in #{path.count} moves! Here's your path:"
    path.each do |move|
      p move
    end
  end

end