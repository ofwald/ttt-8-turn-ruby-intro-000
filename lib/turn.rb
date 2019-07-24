def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i
  index = index - 1
  return index
end

def valid_move?(board, index)
    if !index.between?( -1, 8)
      return false
    else
      return position_taken?(board, index)
    end
  end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return true
  elsif board[index] == "X" || board[index] == "O"
    return false
  else
    return true
  end
end
