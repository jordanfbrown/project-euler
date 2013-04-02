factorials = (1..9).map { |n| (1..n).inject(:*) }.reverse
remainders = factorials.map { |n| { val: 1000000 / n, remainder: 1000000 % n } }

puts remainders.inspect
(1..9).each do |i|

end