# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  matrix_helper(matrix, 0, 0)
end

private

# PRE: provided matrix must be comprised of two-dimensional arrays that only
# contain 1's and 0's, provided row must be an int with a value between 0 and
# the length of the columns in the matrix (inclusive), and provided column must
# be between 0 and the length of the matrix (inclusive).
# Until the provided row and column reach the end of the provided matrix,
# sets the values of the corresponding rows and columns for 0 of any cells with
# a value of 0.
def matrix_helper(matrix, row, column)
  if matrix[row].nil? # QUESTION: Recurses one extra time? Better to stop early?
    return matrix
  elsif matrix[row][column] == 0
    go_to_next_cell(matrix, row, column)
    set_zeros_in_columns(matrix, row)
    set_zeros_in_rows(matrix, column)
    return matrix
  else # value in current cell is 1
    go_to_next_cell(matrix, row, column)
  end
end

# PRE: provided matrix, row, and column must meet all the requirements outlined
# in matrix_helper.
# If provided column is the last index of the provided row, calls matrix_helper
# on the first column of the next row. Otherwise, calls matrix_helper on the
# next column of the provided row.
def go_to_next_cell(matrix, row, column)
  if matrix[row][column + 1].nil?
    matrix_helper(matrix, row + 1, 0) # start traversing next row
  else
    matrix_helper(matrix, row, column + 1) # continue traversing same row
  end
end

# PRE: provided matrix and row must meet all the requirements outlined in
# matrix_helper.
# Sets all values in the provided row of the provided matrix to 0.
def set_zeros_in_columns(matrix, row)
  matrix.length.times { |column_index| matrix[row][column_index] = 0 }
end

# PRE: provided matrix and column must meet all the requirements outlined in
# matrix_helper.
# Sets all values in the provided column of the provided matrix to 0.
def set_zeros_in_rows(matrix, column)
  row_index = 0
  while !matrix[row_index].nil?
    matrix[row_index][column] = 0
    row_index += 1
  end
end


# NOTE: see above for possibly recursing one too many times
#
# Possible way to stop early:
# if matrix[row + 1].nil? && matrix[row][column + 1].nil? # bottom right cell
#
# Or combine this with go_to_next_cell?
