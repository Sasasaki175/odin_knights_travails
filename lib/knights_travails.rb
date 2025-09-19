class KnightsTravails
  # Knights move set
  MOVES = [
    [1, 2], [2, 1], [-1, 2], [-2, 1],
    [1, -2], [2, -1], [-1, -2], [-2, -1]
  ].freeze

  def knight_moves(start, target)
    start_node = Node.new(start)
    node_queue = [start_node]

    # Iterates over nodes in level order.
    until node_queue.empty?
      node = node_queue.shift
      break if node.value == target

      # Create nodes for every move and set the previous node.
      MOVES.each do |dx, dy|
        next_node = Node.new([node.value[0] + dx, node.value[1] + dy], node)
        node_queue << next_node if valid_move?(next_node)
      end
    end

    print_path(node)

    path(node)
  end

  private

  # returns false if the next move is out of bounds or previously done.
  def valid_move?(next_node)
    next_node.value[0].between?(0, 7) &&
      next_node.value[1].between?(0, 7) &&
      !path(next_node.previous_node).include?(next_node)
  end

  # return the path as an array
  def path(node)
    current_node = node
    path = [current_node.value]
    
    until current_node.previous_node.nil?
      path.unshift(current_node.previous_node.value)
      current_node = current_node.previous_node
    end

    path
  end

  def print_path(node)
    puts "You made it in #{path(node).length - 1} moves! Here's your path:"
    p path(node)
  end
end

class Node
  attr_accessor :value, :previous_node
  
  def initialize(value = nil, previous_node = nil)
    @value = value
    @previous_node = previous_node
  end
end
