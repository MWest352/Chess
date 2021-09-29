# frozen_string_literal: true

require 'colorize'

# Sets rook piece
class Rook
  def initialize
    @symbol = " \u265C"
  end

  def display_rook
    puts @symbol
  end
end
