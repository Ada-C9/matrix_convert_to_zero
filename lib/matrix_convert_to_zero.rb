# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
require 'pry'

def matrix_convert_to_0(matrix)
  return if matrix.size == 0
  y_length = matrix.length
  x_length = matrix[0].length

  y = 0
  while y < y_length do
    x = 0
    while x < x_length do

      if matrix[y][x] == 0
        i = 0
        j = 0
        while i < x_length do
          matrix[y][i] = 0
          i += 1
        end
        while j < y_length do
          matrix[j][x] = 0
          j += 1
        end
      end
      x += 1
    end
    y += 1
  end
  return matrix
end
