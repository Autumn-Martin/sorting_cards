require "./lib/guess"
require "minitest/autorun"
require "minitest/pride"
require 'pry'
class GuessTest < Minitest::Test

  # test for instance of guess in class Guess
  def test_for_instance_of_guess1_in_class_Guess
    guess1 = Guess.new("Ace","Spades")
    assert_instance_of Guess, guess1
  end

  # test if value and suit methods assigns appropriately
  def test_if_value_method_assigns_the_variable_guess_an_instance_of_the_class_guess
    guess1 = Guess.new("Ace","Spades")
    assert_equal "Ace", guess1.value
  end

  def test_if_suit_method_assigns_the_variable_guess_an_instance_of_the_class_guess
    guess1 = Guess.new("Ace","Spades")
    assert_equal "Spades", guess1.suit
  end
end
