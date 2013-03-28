def generate_sequence
  sequence = [1, 2]
  count = 2
  while true
    next_val = sequence[-2] + sequence[-1]
    count += 1
    if next_val.to_s.length == 1000
      return count + 1
    else
      sequence << next_val
    end
  end
end

puts generate_sequence