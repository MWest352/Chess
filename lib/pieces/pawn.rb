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
end
