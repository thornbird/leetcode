def find_pairs(nums, k)
  nums.sort!
  i = 0
  j = 1
  pairs = 0
  arr_length = nums.size

  if k == 0
    flag = true
    while j < arr_length
      if nums[i] == nums[j]
        if flag
          pairs += 1
          flag = false
        end
      else
        flag = true
      end
      i = j
      j += 1
    end
  else
    while j < arr_length
      diff = nums[j] - nums[i]
      if diff == k
        pairs += 1 unless (i > 1 && (nums[i] == nums[i-1]) && (nums[j] == nums[j-1]))
        i += 1
        j += 1
      elsif diff == 0
        i = j
        j += 1
      elsif diff < k
        j += 1
      elsif diff > k && j == i + 1
        i = j
        j += 1
      else
        i += 1
      end
    end
  end
  pairs
end

nums = [1, 3, 1, 5, 4]
k = 2
puts find_pairs(nums, k)

nums = [1, 2, 3, 4, 5]
k = 1
puts find_pairs(nums, k)

nums = [1, 1, 1, 2, 2, 3, 4, 5]
k = 0
puts find_pairs(nums, k)

nums = [6,2,9,3,9,6,7,7,6,4]
k = 3
puts find_pairs(nums, k)
