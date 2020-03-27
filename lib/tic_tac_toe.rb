class TicTacToe
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6], 
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2],
    ]

 def initialize 
  @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "] 
 end  
  
 def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
 def input_to_index(str_input)
  str_input.to_i - 1 
 end

 def move(index, token)
   @board[index] = token
  end 
 
 def position_taken?(index)
   if @board[index] == " "
     return false 
   else 
     return true
     # antoher way (@board[index] == " ") ? false : true
   end
 end
 def valid_move?(index)
  index.between?(0, 8) && !(self.position_taken?(index))
  end

 def turn_count 
   @board.count('X') + @board.count('O')
  end
 
 def current_player 
   (self.turn_count.even?) ? 'X' : 'O'
 end
 
 def turn 
  input = gets.chomp 
  
  puts input
 end
end 
