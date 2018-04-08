# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  rows = matrix.length
  columns = matrix[0].length
  column_list = []

  # Time complexity = O(n*m*m) where n is the number of rows(arrays) in the matrix,
  # and m is the number of columns(length of the arrays).
  rows.times do |i|
    columns.times do |j|
      if matrix[i][j] == 0
        column_list << j
        # Convert row to 0 and break to next row
        columns.times do |k|
          matrix[i][k] = 0
        end
        break
      end
    end
  end

  # Convert columns to 0 based on column_list array
  # Time complexity = O(l*n) where l is the number of columns that have to be converted
  # and n is the number of rows(arrays) in the matrix
  column_list.length.times do |j|
    rows.times do |i|
      matrix[i][column_list[j]] = 0
    end
  end

  return matrix
end
