def find_disappeared_numbers(nums)
  point = 0
  length = nums.size
  res = []

  while point <= length - 1
    nums[(nums[point] - 1) % length] += length
    point += 1
  end

  point = 0

  while point <= length - 1
    if nums[point] > length
      point += 1
      next
    else
      point += 1
      res << point
    end
  end

  res
end

a = [4, 3, 2, 7, 8, 2, 3, 1]
puts find_disappeared_numbers(a)

a = [1,1]
puts find_disappeared_numbers(a)
