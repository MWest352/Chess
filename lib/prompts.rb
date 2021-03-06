# frozen_string_literal: true

# Prompts for players to follow
class Prompts
  attr_accessor :game, :mode

  def welcome
    puts "\nWelcome to Chess!
    \nTo play, input coordinates to select the piece you'd like.
    \nThen input the coordinates of where you'd like to move. I.e A2 (return) A4 (return)
    \nYou can save at any point by pressing the 'S' key. To quit press 'Q'.
    \nTo load a saved game, press 'L'.
    \n"
  end

  def select_mode_prompt
    puts "\nPlease select Mode. To load press 'L'. To quit press 'Q' Would you like to play with 1 player or 2 players? [1/2]"
    verify_mode_input
  end

  def verify_mode_input
    @mode = gets.chomp.downcase
    if @mode.to_i.between?(1, 2) || @mode == "l" || @mode == "q"
      @mode
    else
      puts "\nEntry Error: Please pick a mode, 1, 2, Load, or Quit."
      verify_mode_input
    end
  end

  def quit_prompt
    puts "Are you sure you'd like to quit? [Y/N]"
  end

  def quit_input
    quit_prompt
    input = gets.chomp.downcase
    return exit if input == "y"

    select_piece_prompt
  end

  def select_piece_prompt
    puts "Enter coordinates to select a piece."
  end

  def coordinate_input
    input = gets.chomp.downcase
    if input.length == 2 && input.chars[0] =~ /[a-h]/ && input.chars[1] =~ /[1-8]/
      input
    elsif input == "q"
      quit_prompt
    elsif input == "s"
      game_save
    else
      coordinate_input_error
      coordinate_input
    end
  end

  def movement_input
    puts "Enter coordinates to move piece."
  end

  def coordinate_input_error
    puts "Invalid entry. Enter coordinates to select a piece."
  end

  def movement_input_error
    puts "Invalid move. Try again.  Enter coordinates to move piece."
  end

  def check_message
    puts "Check"
  end

  def checkmate_message
    puts "Checkmate"
  end

  def win_message
    puts "(PLAYER INSERT HERE) has won the game in (MOVE TRACKER?) moves."
  end

  def play_again_message
    puts "Would you like to play again? [Y/N]"
  end
end
