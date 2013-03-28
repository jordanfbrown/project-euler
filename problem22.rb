def value(name)
  name.split('').map { |c| c.getbyte(0) - 64 }.inject(:+)
end

puts File.read('names.txt').gsub(/\"/, '').split(',').sort.each_with_index.map { |name, i| value(name) * (i + 1) }.inject(:+)



