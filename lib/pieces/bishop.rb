# frozen_string_literal: true

require 'colorize'

# Sets bishop piece
class Bishop
  def initialize
    @symbol_w = "\u265D"
    @symbol_b = "\u2657"
  end

  def display_bishop_w
    @symbol_w
  end

  def display_bishop_b
    @symbol_b
  end

  def bishop_moves
    [[1, 1], [1, -1], [-1, 1], [-1, -1]]
  end
end
