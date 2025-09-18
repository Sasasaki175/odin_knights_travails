require_relative 'lib/knights_travails'

knights_travails = KnightsTravails.new

p knights_travails.knight_moves([3, 3], [1, 1])
p knights_travails.knight_moves([0, 0], [3, 3])
p knights_travails.knight_moves([3, 3], [0, 0])
p knights_travails.knight_moves([0, 0], [7, 7])