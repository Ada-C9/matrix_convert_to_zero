# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  return if matrix.size == 0
  row_length = matrix.length
  column_length = matrix[0].length

  row = 0
  while row < row_length do
    column = 0
    while column < column_length do

      if matrix[row][column] == 0
        i = 0
        j = 0
        while i < column_length do
          matrix[row][i] = 0
          i += 1
        end
        while j < row_length do
          matrix[j][column] = 0
          j += 1
        end
      end
      column += 1
    end
    row += 1
  end
  return matrix
end
