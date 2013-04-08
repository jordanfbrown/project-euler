# 5 -->  [2, 2, 1], [2, 1, 1, 1], [1, 1, 1, 1, 1]
# 10 --> [5, 5] 
# 20 -> [10, 10]
# 50 -> [20, 20, 10]
# 100 -> [50, 50]
# 200 -> [100, 100]

$coins = [200, 100, 50, 20, 10, 5, 2, 1]

$factor_map = {
  5 => [[2, 2, 1], [2, 1, 1, 1], [1, 1, 1, 1, 1]],
  10 => [[5, 5]],
  20 => [[10, 10]],
  50 => [[20, 20, 10]],
  100 => [[50, 50]],
  200 => [[100, 100]]
}

def breakdown(number, combinations = [])
  combinations << [number] if number == 200
  factor_array = $factor_map[number]
  if factor_array
    factor_array.each do |factors|
      factors.each do |factor|
        
        combinations << breakdown(factor, combinations)
      end
    end
  else
    combinations
  end
end

combinations = breakdown(200)
puts combinations.inspect

