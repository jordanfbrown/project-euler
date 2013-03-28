def proper_divisors(num)
  (num / 2).downto(1).select { |i| num % i == 0 }.inject(:+)
end

def is_amicable(num)
  a = proper_divisors(num)
  b = proper_divisors(a)
  b == num && a != b
end

puts (2..9999).select { |i| is_amicable(i) }.inject(:+)
