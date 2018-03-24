# Thought process:
# Step 1: Find all zeros' indexes in the matrix by looping the maxtrix
# Step 2: Store indexes at rows in a row array, indexes at columns in a column array
# Step 3: Loop through rows array: if the row index is 0, assign 0 to the entire row;
#         if it's not 0, modify the row to column array
# Step 4: return the matrix
#
# Time complxity: O(mn) - loop the matrix to find indexes is 0(mn), loop row array to assign 0
#                   is also O(mn).
#  Space complexity: O(m + n) creating two integer arrays to store row index and column index.
#                   m is the number of rows of the matrix and n is the number of columns of the matrix.

def matrix_convert_to_0(matrix)
  rows = Array.new(matrix.length, 1)
  columns = Array.new(matrix[0].length, 1)

  i = 0
  while i < matrix.length
    j = 0
    while j < matrix[0].length
      if matrix[i][j] == 0
        rows[i] = 0
        columns[j] = 0
      end
      j += 1
    end
    i += 1
  end

  k = 0
  while k < rows.length
    if rows[k] == 0
      g = 0
      while g < matrix[0].length
        matrix[k][g] = 0
        g += 1
      end

    else
     matrix[k] = columns
    end
    k += 1
  end

  return matrix
end
