def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
describe '#input_to_index' do

  it 'converts a user_input to an integer' do
    user_input = "1"
    converted_input = input_to_index(user_input)
    
    expect(converted_input).to be_a(Integer)
  end

  it 'subtracts 1 from the user_input' do
    user_input = "6"
    converted_input = input_to_index(user_input)

    expect(converted_input).to be(5)
  end

  it 'returns -1 for strings without integers' do
    user_input = "invalid"
    converted_input = input_to_index(user_input)
    
    expect(converted_input).to be(-1)
  end

end

describe '/lib/display_board.rb' do
  it 'defines a method display_board' do
    expect(defined?(display_board)).to be_truthy
  end

  context "#display_board method" do
    it 'represents a cell as a string with 3 spaces' do
      output = capture_puts{ display_board }

      expect(output).to include("   ")
    end
    
    it 'separates cells with a | character' do
      output = capture_puts{ display_board }

      expect(output).to include("   |   ")      
    end

    it 'prints an 3 cell row' do
      output = capture_puts{ display_board }

      expect(output).to include("   |   |  ")
    end

    it 'separates rows with a line of 11 -' do
      output = capture_puts{ display_board }

      expect(output).to include("-----------")
    end

    it 'prints a 3x3 tic tac toe board' do
      output = capture_puts{ display_board }

      expected_output  = "   |   |   \n"
      expected_output += "-----------\n"
      expected_output += "   |   |   \n"
      expected_output += "-----------\n"
      expected_output += "   |   |   \n"

      expect(output).to eq(expected_output)
    end
  end
end



def update_array_at_with(array, index, value)
  array[index] = value
end
 
update_array_at_with(board, 0, "X")