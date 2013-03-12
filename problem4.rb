def is_palindrome(number)
  number.to_s == number.to_s.reverse
end

max = 0
(901..999).each do |a|
  (901..999).each do |b|
    product = a * b
    max = product if is_palindrome(product) && product > max
  end
end

puts max