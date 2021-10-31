# frozen_string_literal: true

require_relative '../lib/prompts.rb'
# to run: rspec ./spec/input_validation_spec.rb

describe Prompts do
  subject(:prompt) { described_class.new }

  describe '#select_mode_input' do
    context 'When input is between accepted paramaters' do
      before do
        valid_input = '2'
        allow(subject).to receive(:gets).and_return(valid_input)
      end

      it 'Stops loop and does not display error message' do
        error_message = "\nEntry Error: Please pick a mode, 1, 2, Load, or Quit."
        expect(subject).not_to receive(:puts).with(error_message)
        subject.select_mode_input
      end
    end

    context 'When user inputs an incorrect value once, then a valid input' do
      before do
        invalid_input = 'x'
        valid_input = 'Q'
        allow(subject).to receive(:gets).and_return(invalid_input, valid_input)
      end

      it 'Completes loop and displays error message once' do
        error_message = "\nEntry Error: Please pick a mode, 1, 2, Load, or Quit."
        expect(subject).to receive(:puts).with(error_message).once
        subject.select_mode_input
      end
    end
  end

  describe '#select_piece_input' do
    context 'When input is in correct format' do
      before do
        valid_input = 'a2'
        allow(subject).to receive(:gets).and_return(valid_input)
      end

      it 'Stops loop and does not display error message' do
        error_message = "Invalid entry. Enter coordinates to select a piece."
        expect(subject).not_to receive(:puts).with(error_message)
        subject.select_piece_input
      end

      context 'When user inputs an invalid input, then a valid input' do
        before do
          invalid_input1 = '9'
          invalid_input2 = 'x5'
          invalid_input3 = 'ab3'
          valid_input = 'a2'
          allow(subject).to receive(:gets).and_return(invalid_input1, invalid_input3, invalid_input2, valid_input)
        end

        it 'Completes loop and displays error message three times' do
          error_message = "Invalid entry. Enter coordinates to select a piece."
          expect(subject).to receive(:puts).with(error_message).exactly(3).times
          subject.select_piece_input
        end
      end
    end
  end
end
