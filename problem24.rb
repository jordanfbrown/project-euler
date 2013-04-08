def next_permutation(array)
  max_k = 0
  for k in 0..array.length - 1
    max_k = k if !array[k+1].nil? && array[k] < array[k + 1] && k > max_k
  end

  return array if max_k == -1

  max_l = 0
  for l in 0..array.length - 1
    max_l = l if array[max_k] < array[l] && l > max_l
  end

  array[max_k], array[max_l] = array[max_l], array[max_k]
  array[max_k + 1..array.length] = array[max_k + 1..array.length].reverse
  array
end

prev_permutation = (0..9).to_a
999999.times do
  prev_permutation = next_permutation(prev_permutation)
end

puts prev_permutation.join.inspect


