def is_palindrome(number)
  number.to_s == number.to_s.reverse
end

def num_to_binary(number)
  number.to_s(2)
end

t1 = Time.now
sum = 0
(1..999999).each do |num|
  sum += num if is_palindrome(num) && is_palindrome(num_to_binary(num))
end
t2 = Time.now

puts sum, t2 - t1