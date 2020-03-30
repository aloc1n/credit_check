require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    creditcheck = CreditCheck.new

    assert_instance_of CreditCheck, creditcheck
  end

end
