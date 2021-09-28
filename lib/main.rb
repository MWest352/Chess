# frozen_string_literal: true

require_relative 'board'
require_relative 'display'
require_relative 'prompts'
require 'byebug'


board = Board.new

display = Display.new(board)

prompts = Prompts.new

# prompts.welcome
# display.print_board