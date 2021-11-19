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
  display.display_initial_positions
  select_mode(prompts)
end

def select_mode(prompts)
  prompts.select_mode_prompt
  case prompts.mode
  when 'q'
    prompts.quit_input
  when 'l'
    load_game
  when '1'
    one_player_mode
  when '2'
    two_player_mode
  end
end

def one_player_mode
  puts "OPM"
end

def two_player_mode
  puts "TPM"
end

def load_game
  puts "LG"
end


dirty_game_script(prompts, display)
