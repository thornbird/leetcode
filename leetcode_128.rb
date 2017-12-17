require 'pry'

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  size = nums.size
  return size if size <= 1

  nums.sort!

  tmp = 1
  max = 1
  i = 0
  duplicate_consecutive = false

  while i < size
    while i+1 < size
      if nums[i+1] == nums[i]+1
        i+=1; tmp+=1
      elsif nums[i+1] == nums[i]
        i+=1; tmp+=1
        duplicate_consecutive = true
      else
        break
      end
    end

    if tmp == 2 && duplicate_consecutive
      tmp = 1
    end

    max = tmp if max < tmp
    tmp = 1
    duplicate_consecutive = false
    i+=1
  end

  max
end

puts '------------'

nums = [5, 4, 200, 1, 3, 2, 8, 9, 10, 11, 12, 13]
puts longest_consecutive(nums)

puts '------------'

nums = [0, 1, 1, 2, 3]
puts longest_consecutive(nums)

puts '------------'

nums = [-1, 0]
puts longest_consecutive(nums)

puts '------------'

nums = [0, 0]
puts longest_consecutive(nums)
