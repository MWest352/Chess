# frozen_string_literal: true

require_relative 'board'
require_relative 'display'
require_relative 'prompts'
require 'byebug'


board = Board.new

display = Display.new(board)

prompts = Prompts.new

def dirty_game_script(prompts, display)
  system 'clear'
  prompts.welcome
  display.print_board
end

dirty_game_script(prompts, display)
