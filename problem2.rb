def generate_sequence
  sequence = [1, 2]
  while true
    next_val = sequence[-2] + sequence[-1]
    if next_val > 4000000
      break
    else
      sequence << next_val
    end
  end
  sequence
end

puts generate_sequence.select { |n| n % 2 == 0}.inject(:+)

