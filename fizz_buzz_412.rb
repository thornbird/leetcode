def fizz_buzz(n)
  fizz_buzz_arr = []

  return fizz_buzz if n < 1

  point = 1
  three_multiple = 0
  five_multiple = 0

  while point <= n
    three_multiple = point % 3 == 0
    five_multiple = point % 5 == 0

    if three_multiple && five_multiple
      fizz_buzz_arr << 'FizzBuzz'
    elsif three_multiple
      fizz_buzz_arr << 'Fizz'
    elsif five_multiple
      fizz_buzz_arr << 'Buzz'
    else
      fizz_buzz_arr << point.to_s
    end

    point += 1
  end

  fizz_buzz_arr
end

puts fizz_buzz(15)
