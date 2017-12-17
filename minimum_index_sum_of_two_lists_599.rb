# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}

require 'pry'

def find_restaurant(list1, list2)
  min_index_sum = nil
  restaurants = []
  choices_hash = {}

  limit1, limit2 = list1.length - 1, list2.length - 1
  index1, index2 = 0, 0

  while index1 <= limit1 || index2 <= limit2
    if index1 <= limit1
      if choices_hash.has_key?(list1[index1])
        val = choices_hash[list1[index1]] + index1
        choices_hash[list1[index1]] = val

        if min_index_sum.nil? || min_index_sum > val
          min_index_sum = val
          restaurants = [list1[index1]]
        elsif min_index_sum == val
          restaurants << list1[index1]
        end

        limit1 = min_index_sum if limit1 > min_index_sum
        limit2 = min_index_sum if limit2 > min_index_sum
      else
        choices_hash[list1[index1]] = index1
      end

      index1 += 1
    end

    if index2 <= limit2
      if choices_hash.has_key?(list2[index2])
        val = choices_hash[list2[index2]] + index2
        choices_hash[list2[index2]] = val

        if min_index_sum.nil? || min_index_sum > val
          min_index_sum = val
          restaurants = [list2[index2]]
        elsif min_index_sum == val
          restaurants << list2[index2]
        end

        limit1 = min_index_sum if limit1 > min_index_sum
        limit2 = min_index_sum if limit2 > min_index_sum
      else
        choices_hash[list2[index2]] = index2
      end

      index2 += 1
    end
  end

  restaurants
end

list1 = %w(A G B E C)
list2 = %w(B E X Y Z)
puts '---------'
puts find_restaurant(list1, list2).inspect
