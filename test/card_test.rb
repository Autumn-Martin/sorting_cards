require "./lib/card" # links this test file to the definitions file
require "minitest/autorun"
require "minitest/pride" # for color
require 'pry'
class CardTest < Minitest::Test

  # test for the instance of card1 in Card
  def test_for_instance_of_card1_in_class_Card
    card1 = Card.new("Ace","Spades")
    assert_instance_of Card, card1
  end

  # test if the method value assigns the variable card an intance of 'Ace' to the class, Card
  def test_if_value_method_assigns_the_variable_card_an_instance_of_the_class_card
    card1 = Card.new("Ace","Spades")
    assert_equal "Ace", card1.value
  end

  # test if the method suit assigns the variable card an instance of 'Spades' to the class, Card
  def test_if_suit_method_assigns_the_variable_card_an_instance_of_the_class_card
    card1 = Card.new("Ace", "Spades")
    assert_equal "Spades", card1.suit
  end

end
