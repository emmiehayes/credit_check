require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    cc = CreditCheck.new("4929735477250543")
    assert_instance_of CreditCheck, cc
  end

  def test_it_has_a_card_number
    cc = CreditCheck.new("4929735477250543")
    assert_equal 4929735477250543, cc.card_number
  end

  def test_it_can_convert_integer_to_reversed_array
    cc = CreditCheck.new("4929735477250543")
    expected = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]
    assert_equal expected, cc.card_number_to_reversed_array
  end

  def test_it_can_double_every_other_number
    cc = CreditCheck.new("4929735477250543")
    expected = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal expected, cc.double_every_other_number
  end

  def test_it_can_sum_numbers_over_nine
    cc = CreditCheck.new("4929735477250543")
    expected = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal expected, cc.double_every_other_number
  end

  def test_it_can_sum_the_final_array
    cc = CreditCheck.new("4929735477250543")
    assert_equal 80, cc.sum_final_array
  end

  def test_can_can_recognize_valid_card_numbers
    cc = CreditCheck.new("4929735477250543")
    cc = CreditCheck.new("4024007136512380")
    cc = CreditCheck.new("6011797668867828")
    assert_equal "Card is valid.", cc.validate
  end

  def test_can_recognize_invalid_card_numbers
    cc = CreditCheck.new("5541801923795240")
    cc = CreditCheck.new("4024007106512380")
    cc = CreditCheck.new("6011797668868728")
    assert_equal "Card is invalid.", cc.validate
  end

  def test_can_recognize_valid_American_Express_number
    cc = CreditCheck.new("342804633855673")
    assert_equal "Card is valid.", cc.validate
  end

  def test_can_recognize_invalid_American_Express_number
    cc = CreditCheck.new("342801633855673")
    assert_equal "Card is invalid.", cc.validate
  end
end
