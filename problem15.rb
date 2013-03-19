arr = []
20.times do
  arr << 'r'
end
20.times do
  arr << 'd'
end

puts arr.permutation.to_a.uniq.length