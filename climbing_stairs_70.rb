def climb_stairs(n)
  return 1 if n == 1

  min = (n + 1) / 2
  max = n

  if n % 2 == 0
    ways = 2
  else
    ways = min + 1
  end

  j = min + 1

  while j < max
    n = 1

    x = 1
    y = 1

    while n <= max - j
      x *= (j + 1 - n)
      y *= n
      n += 1
    end

    ways += x/y

    j += 1
  end
  ways
end

puts climb_stairs(1)
puts climb_stairs(2)
puts climb_stairs(3)
puts climb_stairs(4)
puts climb_stairs(5)
puts climb_stairs(7)
puts climb_stairs(8)
