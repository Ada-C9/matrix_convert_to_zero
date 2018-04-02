# Thought process:
# Step 1: Loop first row and first index in each column, if there is any 0, set flag to be true
# Step 2: Find all zeros' indexes in the matrix by looping the maxtrix
# Step 3: Store indexes at rows in first index in each row, store indexes at columns in first row
# Step 4: Loop through rows array: if the row index is 0, assign 0 to the entire row;
#         if it's not 0, modify the row to column array
# Step 5: Set first row or column to be 0 if the flag is true
#
# Time complxity: O(mn) - loop the matrix to find indexes is 0(mn), loop row array to assign 0
#                   is also O(mn).
#  Space complexity: O(1) 

def matrix_convert_to_0(matrix)
  flag_row = false
  flag_column = false

  i = 0
  while i < matrix.length
    if matrix[i][0] == 0
      flag_row = true
    end
    i += 1
  end

  i = 0
  while i < matrix[0].length
    if matrix[0][i] == 0
      flag_column = true
    end
    i += 1
  end

  i = 1
  while i < matrix.length
    j = 1
    while j < matrix[0].length
      if matrix[i][j] == 0
        matrix[i][0] = 0
        matrix[0][j] = 0
      end
      j += 1
    end
    i += 1
  end

  k = 0
  while k < matrix.length
    if matrix[k][0] == 0
      g = 0
      while g < matrix[0].length
        matrix[k][g] = 0
        g += 1
      end

    else
     matrix[k] = matrix[0]
    end
    k += 1
  end

  if flag_row
    i = 0
    while i < matrix.length
      matrix[i][0] = 0
      i += 1
    end
  end

  if flag_column
    i = 0
    while i < matrix[0].length
      matrix[0][i] = 0
      i += 1
    end
  end

  return matrix
end
