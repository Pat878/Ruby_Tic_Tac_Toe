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
  if move == 1 && @square1 != "O"
@square1 = "X"
elsif move == 2 && @square2 != "O"
@square2 = "X"
elsif move == 3 && @square3 != "O"
@square3 = "X"
elsif move == 4 && @square4 != "O"
@square4 = "X"
elsif move == 5 && @square5 != "O"
@square5 = "X"
elsif move == 6 && @square6 != "O"
@square6 = "X"
elsif move == 7 && @square7 != "O"
@square7 = "X"
elsif move == 8 && @square8 != "O"
@square8 = "X"
elsif move == 9 && @square9 != "O"
@square9 = "X"
  end
newBoard
end

def checkWin
  if (@square1 == "X" && @square2 == "X" && @square3 == "X") ||
    (@square4 == "X" && @square5 == "X" && @square6 == "X") ||
    (@square7 == "X" && @square8 == "X" && @square9 == "X") ||
    (@square1 == "X" && @square4 == "X" && @square7 == "X") ||
    (@square2 == "X" && @square5 == "X" && @square8 == "X") ||
    (@square3 == "X" && @square6 == "X" && @square9 == "X") ||
    (@square1 == "X" && @square5 == "X" && @square9 == "X") ||
    (@square1 == "X" && @square5 == "X" && @square7 == "X")
    puts "Player 1 wins!"
    exit
  end
  newBoard
end


def player2Move
  puts "Player 2 make your move."
  move = gets.chomp.to_i
  if move == 1 && @square1 != "X"
    @square1 = "O"
  elsif move == 2 && @square2 != "X"
  @square2 = "O"
elsif move == 3 && @square3 != "X"
@square3 = "O"
elsif move == 4 && @square4 != "X"
@square4 = "O"
elsif move == 5 && @square5 != "X"
@square5 = "O"
elsif move == 6 && @square6 != "X"
@square6 = "O"
elsif move == 7 && @square7 != "X"
@square7 = "O"
elsif move == 8 && @square8 != "X"
@square8 = "O"
elsif move == 9 && @square9 != "X"
@square9 = "O"
  end
newBoard
  end

end

a = Game.new
a.board
a.player1Move
a.player2Move
