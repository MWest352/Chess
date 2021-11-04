# frozen_string_literal: true

require 'byebug'
require_relative 'board'
require_relative 'display'
require_relative 'prompts'
require_relative '../lib/pieces/bishop.rb'
require_relative '../lib/pieces/king.rb'
require_relative '../lib/pieces/knight.rb'
require_relative '../lib/pieces/pawn.rb'
require_relative '../lib/pieces/queen.rb'
require_relative '../lib/pieces/rook.rb'

board = Board.new

display = Display.new(board)

prompts = Prompts.new



def dirty_game_script(prompts, display)
  system 'clear'
  prompts.welcome
  display.initial_positions
end


dirty_game_script(prompts, display)
