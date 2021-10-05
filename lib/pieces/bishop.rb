# frozen_string_literal: true

require 'colorize'

# Sets bishop piece
class Bishop
  def initialize
    @symbol = " \u265D"
  end

  def display_bishop
    puts @symbol
  end

  def bishop_moves
    [[1, 1], [1, -1], [-1, 1], [-1, -1]]
  end
end
