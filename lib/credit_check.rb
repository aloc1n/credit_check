card_number = "5541808923795240"

# Your Luhn Algorithm Here

num = card_number.split("").collect {|digits| digits.to_i}

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



# Valid: 5541808923795240, 4024007136512380, 6011797668867828
# Invalid: 5541801923795240, 4024007106512380, 6011797668868728

class CreditCheck

  def initialize(card_number)
    @card_number = card_number
  end
end
