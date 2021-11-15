# frozen_string_literal: true

require 'colorize'

# Sets knight piece
class Knight
  def initialize
    @symbol_w = "\u265E"
    @symbol_b = "\u2658"
  end

  def display_knight_w
    @symbol_w
  end

  def display_knight_b
    @symbol_b
  end

  def knight_moves
    [[-1, -2], [1, 2], [-1, 2], [1, -2], [-2, -1], [2, 1], [-2, 1], [2, -1]]
  end
end
