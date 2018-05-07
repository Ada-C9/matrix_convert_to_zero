# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
# Time complexity: O(rows * columns) - the number of times the nested loop statements get executed
# Space complexity: O(rows + columns) - additional storage is needed to keep track of which rows and which columns need to convert to zero
def matrix_convert_to_0(matrix)
  rows = matrix.length
  columns = matrix[0].length
  # additional storage to keep track of which rows to convert to zero
  rows_tracking = Array.new(rows, 1)
  # additional storage to keep track of which columns to convert to zero
  columns_tracking = Array.new(columns, 1)

  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 0
        columns_tracking[column] = 0
        rows_tracking[row] = 0
      end
    end
  end

  # if the corresponding 0th row, or 0th column has value of 0, make it 0
  rows.times do |row|
    columns.times do |column|
      if columns_tracking[column] == 0 || rows_tracking[row] == 0
        matrix[row][column] = 0
      end
    end
  end
end
