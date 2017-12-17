# [1,2,3],[2] -> 1
# [1,2,3,4],[1,4]] -> 1
require 'pry'

def find_radius(houses, heaters)
  a = houses.sort.uniq
  b = heaters.sort.uniq

  length1 = a.length
  length2 = b.length

  i, j = 0, 0
  min, min_padding = 0, 0

  min = b[0] - a[0] if b[0] > a[0]

  while i <= length1 - 1 && j <= length2 - 1
    while  i <= length1 - 1  && a[i] <= b[j]
      i += 1
    end

    break if i > length1 - 1 || j >= length2 - 1

    if a[i] >= b[j+1]
      j += 1
    else
      while (i <= length1 - 1) && (a[i] > b[j]) && (a[i] < b[j+1])
        min_padding = ((b[j+1] - a[i]) - (a[i] - b[j])) < 0 ? b[j+1] - a[i] : a[i] - b[j]
        min = min_padding if min < min_padding
        i += 1
      end
    end
  end

  if a[length1-1] > b[length2-1]
    min = a[length1-1] - b[length2-1] if a[length1-1] - b[length2-1] > min
  end

  min
end

# puts find_radius([1,2,3], [2])
# puts find_radius([1,2,3,4], [1,4])
puts find_radius([2,8], [3,5,11,19])
# puts find_radius([25921153,510616708], [771515668,357571490,44788124,927702196,952509530])
