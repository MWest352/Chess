# frozen_string_literal: true

require 'colorize'

# Sets pawn piece
class Pawn
  def initialize
    @symbol_w = "\u265F"
    @symbol_b = "\u2569"
  end

  def display_pawn_w
    @symbol_w
  end

  def display_pawn_b
    @symbol_b
  end

  def pawn_first_move
    [[2, 0], [1, 0]]
  end

  def pawn_moved
    [[1, 0]]
  end

  def pawn_strike
    [[1, -1], [1, 1]]
  end

  def en_passant
    # We'll figure this out after these messages
  end
end
