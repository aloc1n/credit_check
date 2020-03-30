class CreditCheck

  def initialize(card_number)
    @card_number = card_number
  end

  def valid_card
    num_evens = num.select.with_index{ |value, index| index.even? }.collect{|n| n*2}
    num_odds = num.select.with_index{ |value, index| index.odd? }

    split = num_evens.select { |n| n >= 10 }.join("").split("").collect { |n| n.to_i}
    not_split = num_evens.select { |n| n < 10}

    result = num_odds.reduce(:+) + not_split.reduce(:+) + split.reduce(:+)

    if result % 10 == 0
      p "The card number #{card_number} is valid!"
    else
      p "The card number #{card_number} is invalid!"
    end
  end
end
