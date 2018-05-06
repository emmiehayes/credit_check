class CreditCheck

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number.to_i
  end

  def card_number_to_reversed_array
    @card_number.digits
  end

end
