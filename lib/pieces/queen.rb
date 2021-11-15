# frozen_string_literal: true

require 'colorize'

# Sets queen piece
class Queen
  def initialize
    @symbol_w = "\u265B"
    @symbol_b = "\u2655"
  end

  def display_queen_w
    @symbol_w
  end

  def display_queen_b
    @symbol_b
  end

  def queen_moves
    [[0, 1], [0, -1], [-1, 0], [1, 0], [1, 1], [1, -1], [-1, 1], [-1, -1]]
  end
end
