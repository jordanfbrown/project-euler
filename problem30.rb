puts (2..354294).select { |n| n == n.to_s.split('').map { |n| n.to_i ** 5 }.inject(:+) }.inject(:+)
