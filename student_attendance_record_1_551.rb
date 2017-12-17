# @param {String} s
# @return {Boolean}
def check_record(s)
  absent_times = 0
  late_arr = []
  s.each_char.with_index do |att, index|
    if att == 'A'
      absent_times += 1
      return false if absent_times == 2
    elsif att == 'L'
      if late_arr.length == 0
        late_arr << index
      elsif index - late_arr[-1] == 1
        late_arr << index
        return false if late_arr.length == 3
      else
        late_arr = []
        late_arr << index
      end
    end
  end
  true
end

puts check_record("PPALLP")
puts check_record("PPALLL")
