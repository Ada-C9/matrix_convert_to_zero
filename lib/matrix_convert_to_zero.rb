# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

  rows = matrix.length
  columns = matrix[0].length

  columns_with_zero = []

  r = 0
  while r < rows do

    c = 0
    while c < columns do

      if matrix[r][c] == 0

        i = 0
        while i < rows do
          matrix[r][i] = 0
          i += 1
        end
        columns_with_zero << c
        break

      end

      c += 1
    end

    r += 1
  end

  columns_with_zero.each do |i|
    r = 0
    while r < rows do
      matrix[r][i] = 0
      r += 1
    end
  end


  return matrix
end
