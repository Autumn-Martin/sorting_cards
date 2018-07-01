require "./lib/guess"
require "./lib/card"
require "minitest/autorun"
require "minitest/pride"
require 'pry'
class GuessTest < Minitest::Test

  # test for instance of guess in class Guess
  # can create a guess object
  def test_can_create_an_instance_of_guess
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_instance_of Guess, guess
  end

  # test if response and card methods assigns appropriately
  def test_if_guess_has_a_response # response = attribute
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_equal "10 of Hearts", guess.response
  end

  def test_if_guess_has_a_card_method
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    # p card
    # p guess
    assert_equal card, guess.card
  end

  # testing method correct
  def test_if_guess_is_correct
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert guess.correct? # fail unless guess.correct returns true
  end

  def test_if_response_becomes_an_array
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_equal ["10", "of", "Hearts"], guess.response_to_array
  end

end
