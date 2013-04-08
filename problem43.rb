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

permutation = (0..9).to_a
final = permutation.reverse
numbers = []

until permutation == final
  permutation = next_permutation(permutation)
  numbers << permutation.join.to_i if permutation[1..3].join.to_i % 2 == 0 &&
                                      permutation[2..4].join.to_i % 3 == 0 &&
                                      permutation[3..5].join.to_i % 5 == 0 &&
                                      permutation[4..6].join.to_i % 7 == 0 &&
                                      permutation[5..7].join.to_i % 11 == 0 &&
                                      permutation[6..8].join.to_i % 13 == 0 &&
                                      permutation[7..9].join.to_i % 17 == 0
end

puts numbers, numbers.inject(:+)


