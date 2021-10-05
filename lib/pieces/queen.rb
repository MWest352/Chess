# frozen_string_literal: true

require 'colorize'

# Sets queen piece
class Queen
  def initialize
    @symbol = " \u265B"
  end

  def display_queen
    puts @symbol
  end

  def queen_moves
    [[0, 1], [0, -1], [-1, 0], [1, 0], [1, 1], [1, -1], [-1, 1], [-1, -1]]
  end
end
