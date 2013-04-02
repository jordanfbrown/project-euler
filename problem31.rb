def find_combinations_for_coin(coin, current_combination, total)
  total += coin
  current_combination << coin
  if total == 200
    combinations.concat(current_combination)
    find_combinations_for_coin(coin_index + 1, [],  0)
  elsif total < 200
    find_combinations_for_coin(coin_index, current_combination, total)
  elsif total > 200
    find_combinations_for_coin(coin_index + 1, current_combination, total)
  end
end

combinations = []
[200, 100, 50, 20, 10, 5, 2, 1].each do |coin|
  new_combinations = find_combinations_for_coin(coin, [], 0)
  combinations.concat(new_combinations)
end

combinations.uniq.each do |c|
  puts c.inspect
end