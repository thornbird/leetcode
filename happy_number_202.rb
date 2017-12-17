def is_happy(n)
  return false if n <= 0
  while true
    total = 0
    while n > 0
      total += (n % 10) * (n % 10)
      n = n / 10
    end

    return false if total == 4
    return true if total == 1
    n = total
  end
end

puts is_happy(10001)
puts is_happy(2002)
puts is_happy(45)
puts is_happy(67)
