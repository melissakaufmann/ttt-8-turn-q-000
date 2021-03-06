
require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
end

def invalid?(board, position)
  if(board[position.to_i - 1] == nil) then
    position = "invalid"
  end
end

def valid_move?(board, position)
  (!position_taken?(board,position)) && (position != "invalid")
end

def move(board, position, current_player="X")
  board[position.to_i-1] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip 
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    until valid_move?(board, position) == true
    puts "Please enter 1-9:"
    position = gets.strip
  end
end
end