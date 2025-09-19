require_relative 'lib/knights_travails'

knights_travails = KnightsTravails.new

knights_travails.knight_moves([3, 3], [1, 1])
knights_travails.knight_moves([0, 0], [3, 3])
knights_travails.knight_moves([3, 3], [0, 0])
knights_travails.knight_moves([0, 0], [7, 7])