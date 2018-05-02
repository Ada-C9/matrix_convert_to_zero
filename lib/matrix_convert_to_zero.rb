# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
# Time complexity: O(rows * columns) - the number of times the nested loop statements get executed
# Space complexity: O(1) - rows and columns are auxiliary variables that won't change as matrix size changes
def matrix_convert_to_0(matrix)
  rows = matrix.length
  columns = matrix[0].length
  # if any column in the row is 0, make the first column 0
  # if any row in the column is 0, make the first row 0
  # by using the first row and first column in the matrix, save on additional space usage
  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 0
        matrix[0][column] = 0
        matrix[row][0] = 0
      end
    end
  end

  # if the corresponding 0th row, or 0th column has value of 0, make it 0
  rows.times do |row|
    columns.times do |column|
      if matrix[0][column] == 0 || matrix[row][0] == 0
        matrix[row][column] = 0
      end
    end
  end
end
