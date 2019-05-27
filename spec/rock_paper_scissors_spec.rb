require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../models/game.rb')


class GameTest < MiniTest::Test

def setup
  @game1 = Game.new("rock", "paper")
  @game2 = Game.new("rock", "scissors")
  @game3 = Game.new("paper", "scissors")
  @game4 = Game.new("paper", "rock")
  @game5 = Game.new("scissors", "paper")
  @game6 = Game.new("scissors", "rock")
  @game7 = Game.new("paper", "paper")
  @game8 = Game.new("banana", "apple")
  @game9 = Game.new("Paper", "ROCK")
end

def test_rock_paper_scissors__rock_vs_paper
  assert_equal("Paper beats Rock", @game1.rock_paper_scissors)
end

def test_rock_paper_scissors__rock_vs_scissors
  assert_equal("Rock beats Scissors", @game2.rock_paper_scissors)
end

def test_rock_paper_scissors__paper_vs_scissors
  assert_equal("Scissors beat Paper", @game3.rock_paper_scissors)
end

def test_rock_paper_scissors__paper_vs_rock
  assert_equal("Paper beats Rock", @game4.rock_paper_scissors)
end

def test_rock_paper_scissors__scissors_vs_paper
  assert_equal("Scissors beat Paper", @game5.rock_paper_scissors)
end

def test_rock_paper_scissors__scissors_vs_rock
  assert_equal("Rock beats Scissors", @game6.rock_paper_scissors)
end

def test_rock_paper_scissors__draw
  assert_equal("It's a draw", @game7.rock_paper_scissors)
end

def test_rock_paper_scissors__invalid_input
  assert_equal("I don't understand. Please choose rock, paper or scissors to play.", @game8.rock_paper_scissors)
end

def test_rock_paper_scissors__uppercase
  assert_equal("Paper beats Rock", @game9.rock_paper_scissors)
end

end
