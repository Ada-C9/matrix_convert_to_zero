# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

  rows = matrix.length
  columns = matrix[0].length

  row_array = []
  column_array = []

  r = 0
  while r < rows do

    c = 0
    while c < columns do

      if matrix[r][c] == 0
        row_array << r
        column_array << c
      end

      c += 1
    end

    r += 1
  end

  row_array.each do |r|
    columns.times do |c|
      matrix[r][c] = 0
    end
  end


  column_array.each do |c|
    rows.times do |r|
      matrix[r][c] = 0
    end
  end


  return matrix
end
