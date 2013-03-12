def is_prime(number)
  is_prime = true
  (2..Math.sqrt(number).to_i).each do |i|
    if number % i == 0
      is_prime = false
      break
    end
  end
  is_prime
end

i = 2
primes = []
until i > 2000000
  primes << i if is_prime(i)
  i += 1
end

puts primes.inject(:+)

