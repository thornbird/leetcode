# It's my life,                I need to control it

def reverse_string(source)
  target = ''

  tmp_arr = []

  source.each_char do |chr|
    if chr == ' '
      tmp_arr_length = tmp_arr.length

      while tmp_arr_length > 0
        tmp_arr_length -= 1
        target << tmp_arr[tmp_arr_length]
      end
      tmp_arr = []

      target << chr
    else
      tmp_arr << chr
    end
  end

  tmp_arr_length = tmp_arr.length

  while tmp_arr_length > 0
    tmp_arr_length -= 1
    target << tmp_arr[tmp_arr_length]
  end

  target
end

source = 'It\'s my life,                I need to control it'

puts source
puts reverse_string(source)
