def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     false
   elsif board[index] == "X" || board[index] == "O"
     true
  end
end

def move(board, index, character= "X")
  board[index] = character
  return board
end

def input_to_index(input)
  integer = input.to_i - 1
  return integer
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
     move(board, index, character= "X")
  else
    turn(board)
  end
  display_board
end
