(1..1000).each do |a|
  (1..1000).each do |b|
    (1..1000).each do |c|
      if a + b + c == 1000 && a ** 2 + b ** 2 - c ** 2 == 0
        puts a * b * c
        break
      end
    end
  end
end
