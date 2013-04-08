class Solver
	def initialize
		@triangle_numbers = (1..1000).map { |n| 0.5 * n * (n + 1) }
	end

	def value(name)
	  name.split('').map { |c| c.getbyte(0) - 64 }.inject(:+)
	end

	def triangle_word(word)
		@triangle_numbers.include? value(word)
	end

	def solve
		puts File.read('word42.txt').gsub(/\"/, '').split(',').select { |word| triangle_word(word) }.length
	end
end

Solver.new.solve