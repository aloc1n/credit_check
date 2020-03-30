require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require './lib/credit_card'

class CreditCardTest < Minitest::Test

  def test_it_exists
    credit_card = CreditCard.new("5541808923795240", 15000)

    assert_instance_of CreditCard, credit_card
  end

  def test_it_has_a_card_number
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "5541808923795240", credit_card.card_number
  end

  def test_it_has_a_limit
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal 15000, credit_card.limit
  end

  def test_it_has_valid_card_number
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal true, credit_card.is_valid?
  end

  def test_it_has_an_invalid_card_number
    credit_card2 = CreditCard.new("4024007106512380", 9000)
    assert_equal false, credit_card2.is_valid?
  end

  def test_it_can_return_last_four_digits_of_card_number
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "5240", credit_card.last_four
  end

end
