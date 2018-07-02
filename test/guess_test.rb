require "./lib/guess"
require "./lib/card"
require "minitest/autorun"
require "minitest/pride"
require 'pry'
class GuessTest < Minitest::Test
# first testing for correct guesses to be handled properly
  # test for instance of guess in class Guess
  # can create a guess object
  # this test should pass, & does
  def test_can_create_an_instance_of_guess
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_instance_of Guess, guess
  end

  # test if response method assigns appropriately
  # this test should pass, & does
  def test_if_guess_has_a_response # response = attribute
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_equal "10 of Hearts", guess.response
  end
  # test if card method assigns appropriately
  # this test should pass, & does
  def test_if_guess_has_a_card_method
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    # p card # looking at what card is assigned
    # p guess # looking at what guess is assigned
    assert_equal card, guess.card
  end

  # testing method correct
  # this test should pass, & does
  def test_if_guess_is_correct
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert guess.correct? # fail unless guess.correct returns true
  end

  # test if a string response is made into an array
  # this test should pass, & does
  def test_if_response_becomes_an_array
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_equal ["10", "of", "Hearts"], guess.response_to_array
  end

  # check if feedback "Correct!" is given when the guess matches the card
  # this test should pass, & does
  def test_for_feedback
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_equal "Correct!", guess.feedback
  end

# now testing for incorrect guesses to be handled correctly
  # test for an object to be created
  # this test should pass, & does
  def test_can_create_an_instance_of_guess
    card = Card.new("Queen","Clubs")
    guess = Guess.new("2 of Diamonds",card)
    assert_instance_of Guess, guess
  end

  # test if response method assigns appropriately
  # this test should pass, & does
  def test_if_guess_has_a_response # response = attribute
    card = Card.new("Queen","Clubs")
    guess = Guess.new("2 of Diamonds",card)
    assert_equal "2 of Diamonds", guess.response
  end

  # test if card method assigns appropriately
  # this test should pass, & does
  def test_if_guess_has_a_card_method
    card = Card.new("Queen","Clubs")
    guess = Guess.new("2 of Diamonds",card)
    # p card # looking at what card is assigned
    # p guess # looking at what guess is assigned
    assert_equal card, guess.card
  end

  # testing method correct
  # this test should fail, & does
  def test_if_guess_is_correct
    card = Card.new("Queen","Clubs")
    guess = Guess.new("2 of Diamonds",card)
    assert_equal false, guess.correct? # should pass (& does)
    refute_equal true, guess.correct? # should pass (& does)
    # a different way to say the above:
    # assert guess.correct? # fail unless guess.correct returns true
    # refute guess.correct? # passes unless guess.correct returns true
  end

  # test if a string response is made into an array
  # this test should pass, & does
  def test_if_response_becomes_an_array
    card = Card.new("Queen","Clubs")
    guess = Guess.new("2 of Diamonds",card)
    assert_equal ["2", "of", "Diamonds"], guess.response_to_array
  end

  # check if feedback "Correct!" is given when the guess matches the card
  # this test should currently fail, & does
  def test_for_feedback
    card = Card.new("Queen","Clubs")
    guess = Guess.new("2 of Diamonds",card)
    assert_equal "Incorrect.", guess.feedback # this should pass (&does)
    # assert_equal "Correct!", guess.feedback # this should fail (& does) in this context
    refute_equal "Correct!", guess.feedback # this should pass (& does) in this context
  end


end
