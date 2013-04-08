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

def generate_primes
	primes = []
	i = 2
	until i == 1000
		primes << i if is_prime(i)
		i += 1
	end
	primes
end

primes = generate_primes
puts primes.inspect