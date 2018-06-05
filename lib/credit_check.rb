class CreditCheck

  def validate_card(card_number)
    reversed = card_number_to_reversed_array(card_number)
    doubled = double_every_other_number(reversed)
    summed_double_digits = sum_numbers_over_nine(doubled)
    final_sum = sum_final_array(summed_double_digits)
    if modulo_ten(final_sum)
      p "Card is valid."
    else
      p "Card is invalid."
    end
  end

  def card_number_to_reversed_array(numbers)
    numbers.to_i.digits
  end

  def double_every_other_number(numbers)
    numbers.map.with_index do |num, index|
      index.odd? ? num * 2 : num
    end
  end

  def sum_numbers_over_nine(numbers)
    numbers.map do |num|
      num > 9 ? num - 9 : num
    end
  end

  def sum_final_array(numbers)
    numbers.sum
  end

  def modulo_ten(numbers)
    numbers % 10 == 0 && numbers != 0
  end
end
