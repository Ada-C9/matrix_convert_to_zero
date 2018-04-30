# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  row = 0

  until matrix[row] == nil
    column = 0
    until matrix[row][column] == nil
      if matrix[row][column] == 0

        index = 0
        until matrix[row][index] == nil
          matrix[row][index] = 0
          index += 1
        end

        index = 0
        until matrix[index] == nil
          matrix[index][column] = 0
          index += 1
        end
      end
      column += 1
    end
    row += 1
  end
end
