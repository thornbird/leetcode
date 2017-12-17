def intersect(nums1, nums2)
  intersect = []

  nums1.sort!
  nums2.sort!

  nums1_length = nums1.length
  nums2_length = nums2.length

  i = 0
  j = 0

  while i < nums1_length && j < nums2_length
    if nums1[i] < nums2[j]
      i += 1
    elsif nums1[i] = nums2[j]
      intersect << nums1[i]
      i += 1
      j += 1
    else
      j += 1
    end
  end

  intersect

end

nums1 = [1, 1]
nums2 = [1, 2]

puts intersect(nums1, nums2)
