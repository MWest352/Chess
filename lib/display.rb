# frozen_string_literal: true

require 'byebug'
require_relative 'board'

# Displays board and pieces
class Display
  attr_accessor :board

  def initialize(board)
    @board = board.chess_board
  end

  def puts_board
    puts @board
  end

  def print_board
    header_footer
    format_board
    header_footer
    puts
  end

  def format_board
    @board.each_index{ |index| puts "#{8 - index} #{@board[index]} #{8 - index}" }
  end

  def header_footer
    puts "    A    B    C    D    E    F    G    H"
  end

end
