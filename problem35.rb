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
  while i < 1000000
    primes << i if is_prime(i)
    i += 1
  end
  primes
end

def is_circular(number)
  rotations(number).all? { |n| is_prime(n) }
end

def rotations(number)
  array = number.to_s.split('')
  rotations = []
  array.length.times { rotations << array = array.rotate }
  rotations.map { |r| r.join.to_i }
end

count = 0
generate_primes.each do |prime|
  count += 1 if is_circular(prime)
end

puts count

