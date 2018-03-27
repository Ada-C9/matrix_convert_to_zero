# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def check_one?(matrix, row, column)

  matrix.size.times do |i|
    if matrix[i][column] == 0
      return false
    end
  end

  matrix[0].size.times do |j|
    if matrix[row][j] == 0
      return false
    end
  end

  return true
end

def matrix_convert_to_0(matrix)
  rows = matrix.size
  columns = matrix[0].size

  rows.times do |i|
    columns.times do |j|
      if check_one?(matrix, i, j)
        matrix[i][j] = 1
      else
        matrix[i][j] = 0
      end
    end
  end

  return matrix
end
