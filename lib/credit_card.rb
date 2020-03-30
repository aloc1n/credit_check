require './lib/credit_check'
require 'pry'

class CreditCard
  attr_accessor :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def is_valid?
    num = card_number.split("").collect {|digits| digits.to_i}

    num_evens = num.select.with_index{ |value, index| index.even? }.collect{|n| n*2}
    num_odds = num.select.with_index{ |value, index| index.odd? }

    split = num_evens.select { |n| n >= 10 }.join("").split("").collect { |n| n.to_i}
    not_split = num_evens.select { |n| n < 10}

    result = num_odds.reduce(:+) + not_split.reduce(:+) + split.reduce(:+)

    if result % 10 == 0
      true
    else
      false
    end
  end

  def last_four
    @card_number[12..15]
  end
end
