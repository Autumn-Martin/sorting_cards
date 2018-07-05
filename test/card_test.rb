require "./lib/card" # links this test file to the definitions file
require "minitest/autorun"
require "minitest/pride" # for color

class CardTest < Minitest::Test

  # test for the instance of card1 in Card
  def test_can_create_an_instance_of_card
    card1 = Card.new("Ace","Spades")
    assert_instance_of Card, card1
  end

  # test if the method value assigns the variable card an intance of 'Ace' to the class, Card
  def test_if_card_has_a_value
    card1 = Card.new("Ace","Spades")
    assert_equal "Ace", card1.value
  end

  # test if the method suit assigns the variable card an instance of 'Spades' to the class, Card
  def test_if_card_has_a_suit
    card1 = Card.new("Ace", "Spades")
    assert_equal "Spades", card1.suit
  end

  def test_total_value_method
    card1 = Card.new("Ace", "Spades")
    assert_equal 14.4, card1.total_value
  end
end
