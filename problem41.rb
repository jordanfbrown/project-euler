def is_prime(number)
  is_prime = true
  (2..Math.sqrt(number).to_i).each do |i|
    if number % i == 0
      is_prime = false
      break
    end
  end
  is_prime
end

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

max = 0
permutation = (1..7).to_a
final = permutation.reverse

until permutation == final
  permutation = next_permutation(permutation)
  num = permutation.join.to_i
  max = num if num > max && is_prime(num)
end

puts max