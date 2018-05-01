require 'awesome_print'
# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  columns = {}
  row_count = 0
  zero_count = 0

  matrix.each_with_index do |row, r|
    row.each_with_index do |cell, c|

      #look at a row if you find a zero, save the spot(move this into a hash)
      if cell == 0
        columns[c] = 1
        zero_count = 1
      end
    end

    #if zero exists in row, change entire row to zero
    #keep track of how many rows are changed
    if zero_count > 0
      row.each_with_index do |cell, c|
        row[c] = 0
        row_count +=1
      end
    end
  end

  if row_count == matrix.length
    return
  end

  n = 0
  #for each value in columnshash, change all column values to 0
  columns.each do |c, value|
    matrix.length.times do |r|
      matrix[r][c] = 0
      n += 1
    end
    n = 0
  end
end

#using hash tables, leverage sorting
