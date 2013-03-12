def sum_of_squares(range)
  range.map { |x| x**2 }.inject(:+)
end

def square_of_sums(range)
  range.inject(:+) ** 2
end


puts square_of_sums(1..100) - sum_of_squares(1..100)