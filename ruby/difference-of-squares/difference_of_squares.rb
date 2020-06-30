class Squares
  def initialize(input)
    @natural_numbers = 1.upto(input)
  end

  def square_of_sum
    @natural_numbers.sum ** 2
  end

  def sum_of_squares
    @natural_numbers.map { |n| n ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end