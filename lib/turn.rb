# code your #valid_move? method here

def turn(board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ])
  puts "what play?"
  input = gets.strip
  input = input.to_i
  if valid_move?(board, input)
    board[input] = "X"
    display_board(board)
  end
end

def input_to_index(index)
  index = index.to_i
  x = index - 1
  if !x.between?(-1, 8)
    return false
  else
    return index
  end
end

def valid_move?(board, index)
    index = input_to_index(index)
    if position_taken?(board, index)
      return false
    else
      true
    end
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end


# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
