class Game
#  attr_writer :square1

def board
@square1 = 1
@square2 = 2
@square3 = 3
@square4 = 4
@square5 = 5
@square6 = 6
@square7 = 7
@square8 = 8
@square9 = 9

    puts "[#{@square1}] [#{@square2}] [#{@square3}]\n[#{@square4}] [#{@square5}] [#{@square6}]\n[#{@square7}] [#{@square8}] [#{@square9}]\n"

end

def newBoard
  puts "[#{@square1}] [#{@square2}] [#{@square3}]\n[#{@square4}] [#{@square5}] [#{@square6}]\n[#{@square7}] [#{@square8}] [#{@square9}]\n"

end

def player1Move
  puts "Player 1, make your move."
  move = gets.chomp.to_i
  if move == 1
@square1 = "X"
  end
newBoard
end

=begin def checkWin
  if @square1 == "X"
    puts "You win!"
  end
  newBoard
  exit
end
=end

def player2Move
  puts "Player 2 make your move."
  move = gets.chomp.to_i
  if move == 2
  @square2 = "O"

  end
  newBoard
  end

end

a = Game.new
a.board
a.player1Move
a.player2Move
