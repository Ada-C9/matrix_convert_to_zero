# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

  columns = matrix[0].length #number of columns
  rows = matrix.length #number of rows

  to_be_zeroed = []

  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 0
        to_be_zeroed << [row, column]
      end
    end
  end

  to_be_zeroed.each do |r, c|
    columns.times do |column|
      matrix[r][column] = 0
    end

    rows.times do |row|
      matrix[row][c] = 0
    end
  end
  return matrix
end
