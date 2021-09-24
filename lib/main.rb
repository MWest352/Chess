# frozen_string_literal: true

require_relative 'board'
require 'colorize'
require_relative 'display'

board = Board.new

display = Display.new(board)
puts display.render

