module NumberValidator
  def validate
    if sum_final_array % 10 == 0
      "Card is valid."
    else
      "Card is invalid."
    end
  end
end
