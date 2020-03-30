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

end
