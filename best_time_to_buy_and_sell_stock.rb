# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  days = prices.length

  i = 0
  j = 1
  max_profit = 0

  while i < days - 1 && j < days
    profit = prices[j] - prices[i]
    if profit <= 0
      i = j
    elsif profit > max_profit
      max_profit = profit
    end
    j += 1
  end

  max_profit
end

puts max_profit([7, 6, 4, 3, 1])
puts max_profit([7, 1, 5, 3, 6, 4])
puts max_profit([5, 7, 3, 1, 6, 4])
