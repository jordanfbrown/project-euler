def generate_sequence(num)
  sequence = [num]
  until num == 1
    if num % 2 == 0
      sequence << (num = num / 2)
    else
      sequence << (num = 3 * num + 1)
    end
  end
  sequence
end

max = 0
num = 0
(1..999999).each do |i|
  sequence_length = generate_sequence(i).length
  if sequence_length > max
    max = sequence_length
    num = i
  end
end

puts num, max