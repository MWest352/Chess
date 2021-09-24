# frozen_string_literal: true

require 'byebug'

# Renders board and pieces with color
class Display
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def render
    system 'clear'
    header_footer
    8.times do |row|
      puts "-------------------------------------------"
      8.times do |col|
      end
      puts ""
    end
    header_footer
  end

  def header_footer
    puts "    A    B    C    D    E    F    G    H"
  end
end
