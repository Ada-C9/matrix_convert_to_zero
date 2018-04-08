# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
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

  row_index = 0
  while row_index < rows_with_zero.length
    row = rows_with_zero[row_index]
    column = 0
    while column < matrix[row].length
      matrix[row][column] = 0
      column += 1
    end
    row_index += 1
  end

  row_index = 0
  while row_index < matrix.length

    column = 0
    while column < matrix[row_index].length

      column_index = 0
      while column_index < columns_with_zero.length
        if column == columns_with_zero[column_index]
          matrix[row_index][column] = 0
        end
        column_index += 1
      end

      column += 1
    end
    row_index += 1
  end

  return matrix
end
