# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
  arr_size = nums.length

  return arr_size if arr_size <= 1

  i, max, tmp = 0, 1, 1

  while i < arr_size - 1
    if nums[i+1] > nums[i]
      tmp += 1
    else
      max = tmp if max < tmp
      tmp = 1
    end
    i += 1
  end

  max = tmp if max < tmp
  max
end
