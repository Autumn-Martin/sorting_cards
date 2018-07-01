require "./lib/card"
require "minitest/autorun"
require "minitest/pride"
require 'pry'
class GuessTest < Minitest::Test

  # test for instance of guess in class Guess
  def test_for_instance_of_guess1_in_class_Guess
    guess1 = Guess.new("Ace","Spades")
    assert_instance_of Guess, guess1
  end
end
