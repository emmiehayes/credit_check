require 'pry'

class CreditCheck

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number.to_i
  end

  def card_number_to_reversed_array
    @card_number.digits
  end

  def double_every_other_number
    card_number_to_reversed_array.map.with_index do |num, index|
      index.odd? ? num * 2 : num
    end
  end

  def sum_numbers_over_9
    double_every_other_number.map do |num|
      num > 9 ? num - 9 : num
    end
  end

  def sum_final_array
    sum_numbers_over_9.sum
  end

  def validate
    if sum_final_array % 10 == 0
      "Card is valid."
    else
      "Card is invalid."
    end
  end


end
