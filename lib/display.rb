# frozen_string_literal: true

require 'byebug'
require_relative 'board'
require_relative '../lib/pieces/bishop.rb'
require_relative '../lib/pieces/king.rb'
require_relative '../lib/pieces/knight.rb'
require_relative '../lib/pieces/pawn.rb'
require_relative '../lib/pieces/queen.rb'
require_relative '../lib/pieces/rook.rb'

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
    @board.each_index { |index| puts "#{8 - index} #{@board[index]} #{8 - index}" }
  end

  def header_footer
    puts "    A    B    C    D    E    F    G    H"
  end

  def initial_positions
    king_w = King.new
    king_b = King.new
    board[0][3] = king_w.display_king_w
    board[7][4] = king_b.display_king_b
    print_board
  end
end
