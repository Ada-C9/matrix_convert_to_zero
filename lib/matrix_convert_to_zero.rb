# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
require 'pry'
def matrix_convert_to_0(matrix)
  rows_with_zero = []
  columns_with_zero = []

  row = 0
  while row < matrix.length
    column = 0

    while column < matrix[row].length
      if matrix[row][column] == 0
        rows_with_zero << row
        columns_with_zero << column
      end

      column += 1
    end

    row += 1
  end

  index_one = 0
  while index_one < rows_with_zero.length
    row = rows_with_zero[index_one]
    inner = 0
    while inner < matrix[row].length
      matrix[row][inner] = 0
      inner += 1
    end
    index_one += 1
  end

  index = 0
  while index < matrix.length

    column = 0
    while column < matrix[index].length

      inner = 0
      while inner < columns_with_zero.length
        if column == columns_with_zero[inner]
          matrix[index][column] = 0
        end
        inner += 1
      end

      column += 1
    end
    index += 1
  end

  return matrix
end
