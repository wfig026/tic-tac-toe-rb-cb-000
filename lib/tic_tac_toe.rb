# Define Win combinations
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # lef column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # left to right diagonal
  [2,4,6]  # right to left diagonal
]

# Define and display the board
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-" * 11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-" * 11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Is position taken?
def position_taken?(board, index)
  position = board[index]
  if position == " " || position == "" || position == nil
    return false
  else
    return true
  end
end

# Is the selection a valid move?

def valid_move?(board, index)
  if (position_taken?(board, index) == false && index.between?(0, 8) == true)
    return true
  else
    return false
  end
end
