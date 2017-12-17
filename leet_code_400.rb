# @param {Integer} n
# @return {Integer}
require 'pry'

def find_nth_digit(n)
  nums_in_order = [9, 189, 2889, 38889, 488889, 5888889, 68888889, 788888889, 8888888889]
  digit_nums = 0
  far_from_beginning = 0
  begin_num = 0
  nums_in_order.each_with_index do |item, index|
    if n <= item
      digit_nums = index + 1
      begin_num = 10 ** index
      break
    end
  end
  far_from_beginning = if digit_nums > 1
    n - nums_in_order[digit_nums-2]
  else
    n
  end
  a, b = far_from_beginning / digit_nums, far_from_beginning % digit_nums

  the_number = if b > 0
                 begin_num + a
               else
                 begin_num + a - 1
               end

  if b == 0
    the_number % 10
  else
    (the_number / (10 ** (digit_nums - b))) % 10
  end
end

puts find_nth_digit(19)
puts find_nth_digit(20)
puts find_nth_digit(21)
puts find_nth_digit(3)
