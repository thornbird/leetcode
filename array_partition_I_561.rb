def array_pari_sum(nums)
  nums.sort!

  i = 0
  length = nums.length
  sum_pair_min = 0

  while i < length
    sum_pair_min += nums[i]
    i += 2
  end

  sum_pair_min
end

nums = [-1, -2, 8, 7, 9, 10]

puts array_pari_sum(nums)

