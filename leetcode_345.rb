def reverse_vowels(s)
  vowels = %w(a e i o u)

  vowels_arr = []

  s.each_with_index do |item, index|
    vowels_arr << [index, item] if vowels.include? item
  end

  vowels_arr_size = vowels_arr.size

  return s if vowels_arr_size == 0

  i = 0

  while i < vowels_arr_size/2
    tmp = s[vowels_arr_size - i - 1]
    s[vowels_arr_size - i - 1] = s[i]
    s[i] = tmp
  end

  s
end

s = 'leetcode'

reverse_vowels(s)
