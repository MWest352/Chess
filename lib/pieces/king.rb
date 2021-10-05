# frozen_string_literal: true

require 'colorize'

# Sets King piece
class King
  def initialize
    @symbol = " \u265A"
  end

  def display_king
    puts @symbol
  end

  def king_moves
    [[0, 1], [1, 1], [1, 0], [1, -1], [0, -1], [-1, -1], [-1, 0], [-1, 1]]
  end
end
