def create_spiral(length)
  sum = 0
  last = 1
  (0..length / 2).each do |i|
    last, total = spiral_array(i, last)
    puts "#{i}: #{total}"
    sum += total
  end
  sum
end

def spiral_array(i, previous_val)
  spiral = []
  increment = 2 ** i
  if i == 0
    spiral << 1
  else
    (1..4).each do |j|
      spiral << (j * increment) + previous_val
    end
  end
  puts spiral.inspect
  [spiral.last, spiral.inject(:+)]
end


puts create_spiral(7)

