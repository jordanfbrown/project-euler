

def num_to_word(num)
  as_string = num.to_s
  if num < 20
    case num
      when 0 then ''
      when 1 then 'one'
      when 2 then 'two'
      when 3 then 'three'
      when 4 then 'four'
      when 5 then 'five'
      when 6 then 'six'
      when 7 then 'seven'
      when 8 then 'eight'
      when 9 then 'nine'
      when 10 then 'ten'
      when 11 then 'eleven'
      when 12 then 'twelve'
      when 13 then 'thirteen'
      when 14 then 'fourteen'
      when 15 then 'fifteen'
      when 16 then 'sixteen'
      when 17 then 'seventeen'
      when 18 then 'eighteen'
      when 19 then 'nineteen'
    end
  elsif num >= 20 && num < 100
    tens_digit = as_string[0].to_i
    ones_digit = as_string[1].to_i
    tens_word = case tens_digit
      when 2 then 'twenty'
      when 3 then 'thirty'
      when 4 then 'forty'
      when 5 then 'fifty'
      when 6 then 'sixty'
      when 7 then 'seventy'
      when 8 then 'eighty'
      when 9 then 'ninety'
    end
    tens_word + num_to_word(ones_digit)
  elsif num >= 100 and num < 1000
    hundreds_digit = as_string[0].to_i
    tens = as_string[1,2].to_i
    tens_word = num_to_word(tens)
    hundreds_word = "#{num_to_word(hundreds_digit)}hundred"
    tens_word.empty? ? hundreds_word : "#{hundreds_word}and#{tens_word}"
  elsif num == 1000
    'onethousand'
  end
end

puts (1..1000).map { |i| num_to_word(i) }.join.length
