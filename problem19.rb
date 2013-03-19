def days_in_month(month, year)
[31, (year % 4 == 0 && year != 1900 ? 29 : 28), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month]
end

num_sundays = 0
first_day = nil
(1900..2000).each do |year|
  (0..11).each do |month|
    num_days = days_in_month(month - 1, year)
    if year == 1900 && month == 0
      first_day = 0
    else
      first_day = (first_day + num_days) % 7
    end
    num_sundays += 1 if first_day == 6 && year > 1900
  end
end

puts num_sundays
