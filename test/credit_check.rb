require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    creditcheck = CreditCheck.new("5541808923795240")
    creditcheck2 = CreditCheck.new("4024007106512380")

    assert_instance_of CreditCheck, creditcheck
  end

end
