# frozen_string_literal: true

require 'colorize'

# Sets knight piece
class Knight
  def initialize
    @symbol = " \u265E"
  end

  def display_knight
    @symbol
  end

  def knight_moves
    [[-1, -2], [1, 2], [-1, 2], [1, -2], [-2, -1], [2, 1], [-2, 1], [2, -1]]
  end
end
