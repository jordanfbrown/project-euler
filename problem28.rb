def diagonal_sum(num)
  last = 1
  sum = 0
  range = (num - 1) / 2
  (1..range).each do |i|
    step = 2 * i
    n = last + step
    sum += (4 * n + 6 * step)
    last = n + 3 * step
  end
  sum + 1
end

puts diagonal_sum(1001)
