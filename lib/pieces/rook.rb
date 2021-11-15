# frozen_string_literal: true

require 'colorize'

# Sets rook piece
class Rook
  def initialize
    @symbol_w = "\u265C"
    @symbol_b = "\u2656"
  end

  def display_rook_w
    @symbol_w
  end

  def display_rook_b
    @symbol_b
  end

  def rook_moves
    [[0, 1], [0, -1], [-1, 0], [1, 0]]
  end
end
