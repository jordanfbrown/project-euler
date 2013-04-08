def is_prime(number)
  is_prime = true
  (2..Math.sqrt(number.abs).to_i).each do |i|
    if number % i == 0
      is_prime = false
      break
    end
  end
  is_prime
end

max_primes = 0
max_values = []
(-999..999).each do |a|
	(-999..999).each do |b|
		prime = true
		n = 0
		while prime
			value = n ** 2 + a * n + b
			prime = is_prime(value)
		  if n > max_primes
	  		max_primes = n
	  		max_values = [a, b]
		  end	
		  n += 1
		end
	end
end

puts max_values.inject(:*)
