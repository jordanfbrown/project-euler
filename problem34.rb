class FactorialFinder
  attr_accessor :factorials

  def initialize
    @factorials = {}
  end

  def factorial(number)
    @factorials[number] || (@factorials[number] = (number == 0 ? 1 : (1..number).inject(:*)))
  end

  def curious_number(number)
    number == number.to_s.split('').map { |num| factorial(num.to_i) }.inject(:+)
  end
end

finder = FactorialFinder.new
puts (3..1000000).select { |num| finder.curious_number(num) }.inject(:+)
