require 'bigdecimal'

one = BigDecimal.new(1)

(2..999).each do |num|
  fraction = one / BigDecimal.new(num)
  string = fraction.to_s
  match = string.match(/(\d+)\1+/)
  if match && match[1].length > 7
    puts "#{num}, #{match[1]}: #{match[1].length}"
  end
end
