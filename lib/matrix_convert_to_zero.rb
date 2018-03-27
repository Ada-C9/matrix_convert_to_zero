# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
require 'pry'

def matrix_convert_to_0(matrix)

  rows = matrix.size
  columns = matrix[0].size
  coordinates = []

  rows.times do |row|

    columns.times do |column|
      if matrix[row][column] == 0
        coordinates << [row, column]
      end
    end

  end

  coordinates.each do |x,y|

    columns.times do |column|
      matrix[x][column] = 0
    end

    rows.times do |row|
      matrix[row][y] = 0
    end

  end

  return matrix

end
