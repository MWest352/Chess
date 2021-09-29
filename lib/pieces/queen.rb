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
end
