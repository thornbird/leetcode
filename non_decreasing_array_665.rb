require 'pry'

# @param {Integer[]} nums
# @return {Boolean}
def check_possibility(nums)
  arr_length = nums.length

  traverse_index = 0
  larger_times = 0

  while traverse_index < arr_length - 1
    if nums[traverse_index] > nums[traverse_index + 1]
      larger_times += 1
      if larger_times == 1 && traverse_index > 0
        if larger_times == 1 && traverse_index > 0 && traverse_index < arr_length - 2
          return false unless nums[traverse_index] <= nums[traverse_index + 2] || nums[traverse_index -1] <= nums[traverse_index + 1]
        end
      end
      return false if larger_times == 2
    end
    traverse_index += 1
  end

  true
end

puts check_possibility [4, 2, 3]
puts check_possibility [4, 2, 1]
puts check_possibility [3, 4, 2, 3]
puts check_possibility [-1, 4, 2, 3]
puts check_possibility [2,3,3,2,4]
puts check_possibility [1, 3, 5, 2, 4]
