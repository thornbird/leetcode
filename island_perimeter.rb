require 'pry'

def island_perimeter(grid)
  perimeter = 0
  return perimeter if grid.size == 0 || grid[0].size == 0
  height = grid.size
  width = grid[0].size
  grid.each_with_index do |column, i|
    column.each_with_index do |item, j|
      next if item == 0
      perimeter += 4
      perimeter -= 1 if (i >= 1) && grid[i-1][j] == 1
      perimeter -= 1 if (i <= height - 2) && grid[i+1][j] == 1
      perimeter -= 1 if (j >= 1) && grid[i][j-1] == 1
      perimeter -= 1 if (j <= width - 2) && grid[i][j+1] == 1
      binding.pry
    end
  end
  perimeter
end

# grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
grid = [[0, 1, 1]]
puts island_perimeter(grid)
