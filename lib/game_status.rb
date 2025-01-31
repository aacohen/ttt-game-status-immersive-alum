# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
 WIN_COMBINATIONS.each do |win_combination|
   if (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") || (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
       return win_combination
   end
 end
 return nil
end

def full?(board)
board.none?{ |i| i == " "}
end

def draw?(board)
  if full?(board) && !(won?(board))
    return true
  else if (!(full?(board)) && !(won?(board))) || !(full?(board))
    return false
  end
end
end

def over?(board)
won?(board) || full?(board) || draw?(board)
end

def winner(board)
  winning_combo = won?(board)
  if winning_combo != nil
    return board[winning_combo[0]]
  else
    return nil
  end
end
