def can_place_flowers(flowerbed, n)
  i, j, new_flowers = 0, 0, 0

  arr_size = flowerbed.size
  first_flower_appeared = false

  while i < arr_size
    if flowerbed[i] == 0
      j += 1
    else
      if first_flower_appeared
        new_flowers += (j - 1) / 2 if j >= 3
      else
        new_flowers += j / 2 if j >= 2
      end
      first_flower_appeared = true unless first_flower_appeared
      j = 0
    end
    i += 1
  end

  new_flowers += (first_flower_appeared ? j / 2 : (j + 1) / 2)

  new_flowers >= n
end


