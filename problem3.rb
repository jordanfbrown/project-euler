class Solver
  attr_reader :factors

  def initialize
    @primes = generate_primes(10000)
  end

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

  def generate_primes(length)
    primes = []
    i = 2
    until primes.length == length
      primes << i if is_prime(i)
      i += 1
    end
    primes
  end

  def prime_factors(num, factors = [])
    if is_prime(num)
      factors << num
    else
      @primes.each do |prime|
        if num % prime == 0
          return prime_factors(num / prime, factors << prime)
        end
      end
    end
  end

  def run
    factors = prime_factors(600851475143)
    puts factors.max
  end
end

s = Solver.new
t1 = Time.now
s.run
t2 = Time.now
puts 'Time', t2-t1

