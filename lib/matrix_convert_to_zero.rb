# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  return false if matrix.nil?

  rows = matrix.length
  columns = matrix[0].length

  select_columns = []

  rows.times do |i|
    columns.times do |j|
      if matrix[i][j] == 0
        k = 0
        until k == columns
          matrix[i][k] = 0
          k += 1
        end
        select_columns << j
      end
    end
  end

  select_columns.each do |column|
    q = 0
    until q == rows
      matrix[q][column] = 0
      q += 1
    end
  end

  return matrix
end
