class CreditCard
  attr_accessor :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end
end
