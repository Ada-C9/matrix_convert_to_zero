# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# time = O(n*m) where n is the length of a row and m is the length of the column
# space - O(n*m) where n is the length of a row given n>m. this is the space needed to store the positions of all of the zeroes
def matrix_convert_to_0(matrix)
  zeroes = find_zeroes(matrix)
  zeroes.each do |position|
    update_matrix(matrix, position)
  end
end

# time - O(n * m) where n is the length of the row and m is the length of the column
# space - O(1) no additional space is needed to update the matrix
def update_matrix(matrix, position)
  row_num = position[0]
  col_num = position[1]
  i = 0
  j = 0

  while i < matrix.count
    row = matrix[i]
    matrix[i][col_num] = 0
    while j < matrix[0].count
      zero_row = matrix[row_num]
      zero_row[j] = 0
      j += 1
    end
    i += 1
  end
end

# time - O(n*m) where n is the length of a row and m is a length of the column
# space - O(n*m) where n is the length of the row and m is the length of the column. this assumes n>m. worst case each ele is a zero.
def find_zeroes(matrix)
  i = 0
  j = 0
  row_count = matrix.count
  col_count = matrix[0].count

  zeroes = []
  while i < row_count
    row = matrix[i]
    while j < col_count
      if row[j] == 0
        zeroes << [i,j]
      end
      j += 1
    end
    i += 1
    j = 0
  end

  return zeroes
end
