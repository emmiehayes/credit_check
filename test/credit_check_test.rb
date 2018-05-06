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







end