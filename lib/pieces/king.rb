# frozen_string_literal: true

require 'colorize'

# Sets King piece
class King
  def initialize
    @symbol_w = "\u265A"
    @symbol_b = "\u2654"
  end

  def display_king_w
    @symbol_w
  end

  def display_king_b
    @symbol_b
  end

  def king_moves
    [[0, 1], [1, 1], [1, 0], [1, -1], [0, -1], [-1, -1], [-1, 0], [-1, 1]]
  end
end
