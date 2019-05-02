# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: ?
# Space complexity: ?
require 'pry'
def matrix_convert_to_zero(matrix)
  return_matrix = []
  matrix_col = Hash.new
  is_zero = false

  matrix.each do |row|
    row.each_with_index do |num, i|
      if num == 0
        is_zero = true
        matrix_col[i] = 1
      else
        is_zero = false 
      end
    end
    if is_zero == true
      return_matrix << Array.new(3, 0)
    else
      return_matrix << Array.new(3, 1)
    end
  end
  binding.pry
  return return_matrix
end

matrix = [[1,1,1], [1,0,1], [1,1,1], [1,1,0]]
puts matrix_convert_to_zero(matrix)