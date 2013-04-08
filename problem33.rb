require 'bigdecimal'

fractions = []
(10..99).each do |numerator|
	(10..99).each do |denominator|
		fraction = numerator / denominator.to_f
		next if fraction >= 1
		numerator_digits = numerator.to_s.split('').map(&:to_i)
		denominator_digits = denominator.to_s.split('').map(&:to_i)

		denominator_digits.each_with_index do |denominator_digit, denominator_index|
			if numerator_digits.include?(denominator_digit) && denominator_digit != 0
				numerator_index = numerator_digits.index(denominator_digit)
				numerator_digit = numerator_index == 1 ? numerator_digits[0] : numerator_digits[1]
				denominator_digit = denominator_index == 1 ? denominator_digits[0] : denominator_digits[1]
				fractions << [numerator, denominator] if denominator_digit != 0 && fraction == numerator_digit / denominator_digit.to_f
			end
		end
	end
end

numerator = 1
denominator = 1
fractions.each do |fraction|
	numerator *= fraction[0]
	denominator *= fraction[1]
end

puts (numerator/denominator.to_r).denominator