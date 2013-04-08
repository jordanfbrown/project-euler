def next_permutation(array)
  max_k = 0
  for k in 0..array.length - 1
    if !array[k+1].nil? && array[k] < array[k + 1] && k > max_k
      max_k = k
    end
  end

  if max_k == -1
    return array
  end

  max_l = 0
  for l in 0..array.length - 1
    if array[max_k] < array[l] && l > max_l
      max_l = l
    end
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


