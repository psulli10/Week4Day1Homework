require('pry')

class Game

def initialize(guess1, guess2)

  @guess1 = guess1.downcase()
  @guess2 = guess2.downcase()

end

def rock_paper_scissors

  if @guess1 == "rock" && @guess2 == "paper"
    return "Paper beats Rock. Player 2 wins."
  elsif @guess1 == "rock" && @guess2 == "scissors"
    return "Rock beats Scissors. Player 1 wins."
  elsif @guess1 == "paper" && @guess2 == "scissors"
    return "Scissors beat Paper. Player 2 wins."
  elsif @guess1 == "paper" && @guess2 == "rock"
    return "Paper beats Rock. Player 1 wins."
  elsif @guess1 == "scissors" && @guess2 == "paper"
    return "Scissors beat Paper. Player 1 wins."
  elsif @guess1 == "scissors" && @guess2 == "rock"
    return "Rock beats Scissors. Player 2 wins"
  elsif @guess1 == @guess2
    return "It's a draw"
  else
    return "I don't understand. Please choose rock, paper or scissors to play."
  end

end

end
