# frozen_string_literal: true

require 'colorize'

# Sets pawn piece
class Pawn
  def initialize
    @symbol = " \u265F"
  end

  def display_pawn
    puts @symbol
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
