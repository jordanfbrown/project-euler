def is_prime(number)
  is_prime = number != 1
  (2..Math.sqrt(number).to_i).each do |i|
    if number % i == 0
      is_prime = false
      break
    end
  end
  is_prime
end

def generate_primes(length)
  primes = []
  i = 2
  until primes.length == length
    primes << i if is_prime(i)
    i += 1
  end
  primes
end

def truncatable?(number)
  truncatable = is_prime(number)
  return false if [2,3,5,7].include? number || !truncatable
  string = number.to_s
  (1..string.length - 1).each do |i|
    left_to_right = string[i..string.length-1]
    right_to_left = string[0..string.length-1-i]
    truncatable = is_prime(left_to_right.to_i) && is_prime(right_to_left.to_i)
    return false unless truncatable
  end 
  truncatable
end

puts generate_primes(100000).select { |n| truncatable?(n) }.inject(:+)