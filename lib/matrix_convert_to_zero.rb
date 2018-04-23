# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  hash_row = {}
  hash_column = {}

  r = 0
  while r < matrix.length do
    c = 0
    while c < matrix[r].length do
      if matrix[r][c] == 0
        hash_row[r] = true
        hash_column[c] = true
      end
      c += 1
    end
    r +=1
  end

  r = 0

  while r < matrix.length do
    c = 0
    while c < matrix[r].length do
      if hash_row[r] == true || hash_column[c] == true
        matrix[r][c]=0
      end
      c+=1
    end
    r +=1
  end
end
