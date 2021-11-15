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

  def create_pieces
    @king_w = King.new
    @king_b = King.new
    @queen_w = Queen.new
    @queen_b = Queen.new
    @bishop_lw = Bishop.new
    @bishop_rw = Bishop.new
    @bishop_lb = Bishop.new
    @bishop_rb = Bishop.new
    @knight_lw = Knight.new
    @knight_rw = Knight.new
    @knight_lb = Knight.new
    @knight_rb = Knight.new
    @rook_lw = Rook.new
    @rook_rw = Rook.new
    @rook_lb = Rook.new
    @rook_rb = Rook.new
  end

  def initial_positions
    create_pieces
    board[0][7] = @rook_rw.display_rook_w
    board[0][6] = @knight_rw.display_knight_w
    board[0][5] = @bishop_rw.display_bishop_w
    board[0][4] = @king_w.display_king_w
    board[0][3] = @queen_w.display_queen_w
    board[0][2] = @bishop_lw.display_bishop_w
    board[0][1] = @knight_lw.display_knight_w
    board[0][0] = @rook_lw.display_rook_w
    board[7][7] = @rook_rb.display_rook_b
    board[7][6] = @knight_rb.display_knight_b
    board[7][5] = @bishop_rb.display_bishop_b
    board[7][4] = @king_b.display_king_b
    board[7][3] = @queen_b.display_queen_b
    board[7][2] = @bishop_lb.display_bishop_b
    board[7][1] = @knight_lb.display_knight_b
    board[7][0] = @rook_lb.display_rook_b
    print_board
  end

end
