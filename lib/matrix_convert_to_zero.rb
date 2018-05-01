# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  row_length = matrix.length
  row = 0

  until row == row_length
    matrix.each do |array|
      column_length = array.length
      column = 0
      until column == column_length
        array.each do |element|
          if element == 0
            matrix.each do |array|
              array[column] = 0
            end
            i = 0
            column_length.times do
              matrix[row][i] = 0
              i += 1
            end
          end
          column += 1
        end
      end
      row += 1
    end
  end
end

  # matrix = [[1, 1, 1,], [1, 0, 1], [1, 1, 1], [1, 1, 0]]
  # rows = matrix.length => 4
  # columns = matrix[0].length => 3
