require 'pry'

def max_sub_array(nums)
  nums_length = nums.length
  max_sofar, max_ending = nums[0], nums[0]
  i = 1
  while i < nums_length
    max_ending = (max_ending + nums[i] > nums[i] ? max_ending + nums[i] : nums[i])
    max_sofar = (max_ending > max_sofar ? max_ending : max_sofar)
    binding.pry
    i += 1
  end

  max_sofar
end

puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
