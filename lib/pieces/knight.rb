# frozen_string_literal: true

require 'colorize'

# Sets knight piece
class Knight
  def initialize
    @symbol = " \u265E"
  end

  def display_knight
    puts @symbol
  end
end
