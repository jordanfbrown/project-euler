found = false
i = 1
until found
  found = (1..10).all? { |num| i % num == 0 }
  i += 1 unless found
end

puts i