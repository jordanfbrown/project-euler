def find_permutations(array)
  num_permutations = (1..array.length).inject(:*)
  (0..num_permutations - 1).each do |i|
    permutations << []
  end
end

arr = [1,2,3,4,5]
puts find_permutations(arr).inspect