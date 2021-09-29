# frozen_string_literal: true

require_relative '../lib/board.rb'
# to run: rspec ./spec/board_spec.rb

describe Board do
  subject(:game_board) { described_class.new }

  describe '#initialize' do
    it 'creates an 8 by 8 array' do
      array = [
        ["x", "x", "x", "x", "x", "x", "x", "x"], 
        ["x", "x", "x", "x", "x", "x", "x", "x"], 
        ["x", "x", "x", "x", "x", "x", "x", "x"], 
        ["x", "x", "x", "x", "x", "x", "x", "x"], 
        ["x", "x", "x", "x", "x", "x", "x", "x"], 
        ["x", "x", "x", "x", "x", "x", "x", "x"], 
        ["x", "x", "x", "x", "x", "x", "x", "x"], 
        ["x", "x", "x", "x", "x", "x", "x", "x"]
      ]
      chess_board = game_board.chess_board
      expect(chess_board).to eq(array)
    end
  end
end