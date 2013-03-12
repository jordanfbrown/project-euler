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
until primes.length == 10001
  primes << i if is_prime(i)
  i += 1
end

puts primes.last

