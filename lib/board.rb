# frozen_string_literal: true

# Logic for board
class Board
  attr_accessor :chess_board

  def initialize(chess_board = Array.new(8) { Array.new(8, "x") })
    @chess_board = chess_board
  end

end
