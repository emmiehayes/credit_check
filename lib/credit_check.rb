require_relative 'number_formatter'
require_relative 'validator'

class CreditCheck
  include NumberFormatter
  include NumberValidator

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number.to_i
  end
end
