# frozen_string_literal: true

require 'colorize'

# Logic for board
class Board
  def initialize(board = Array.new(8) { Array.new(8) })
    @board = board
  end

  def format_board
    header_footer
    @board.each_index { |index| puts "#{8 - index} #{@board[index]} #{8 - index}" }
    header_footer
  end

  def header_footer
    puts "    A    B    C    D    E    F    G    H"
  end
end

b = Board.new
b.format_board
