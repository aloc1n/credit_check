require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require './lib/credit_card'

class CreditCardTest < Minitest::Test

  def test_it_exists
    credit_card = CreditCard.new("5541808923795240", 15000)

    assert_instance_of CreditCard, credit_card
  end

end
