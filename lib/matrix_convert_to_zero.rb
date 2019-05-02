# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: ?
# Space complexity: ?
require 'pry'
def matrix_convert_to_zero(matrix)
  return_matrix = create_matrix(matrix)

  matrix.each_with_index do |row, i|
    row.each_with_index do |num, j|
      if num == 0
        convert_row_to_zero(i, return_matrix)
        convert_col_to_zero(j, return_matrix)
      end
    end
  end  
  
  return return_matrix
end

def convert_row_to_zero(row, matrix)
  i = 0
  
  while i < matrix[row].length
    matrix[row][i] = 0
    i += 1
  end

  return matrix
end

def convert_col_to_zero(column, matrix)
  i = 0

  while i < matrix.length
    matrix[i][column] = 0
    i += 1
  end

  return matrix
end

def create_matrix(matrix)
  return_matrix = Array.new
  matrix.count.times do 
    return_matrix << Array.new(matrix[0].count, 1)
  end

  return return_matrix
end

matrix = [[1,1,1], [1,0,1], [1,1,1], [1,1,0]]

return_matrix = create_matrix(matrix)
# puts "#{convert_row_to_zero(1, create_matrix(return_matrix))}"
# puts "#{convert_col_to_zero(1, create_matrix(return_matrix))}"
puts "#{matrix_convert_to_zero(matrix)}"