# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  xor_result = x ^ y
  n = 0
  while xor_result > 0
    n += 1 if xor_result % 2 == 1
    xor_result /= 2
  end
  n
end

puts hamming_distance(1, 4)
