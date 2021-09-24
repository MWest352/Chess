# frozen_string_literal: true

# Logic for board
class Board
  def initialize(board = Array.new(8) { Array.new(8) })
    @board = board
  end
end
