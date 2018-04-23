# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# verify_matrix helper method only for tests

def initialize_matrix(rows, columns)
  # create the matrix using the rows and columns
  matrix = Array.new(rows){Array.new(columns)}

  # initialize the matrix
  rows.times do |row|
    columns.times do |column|
      matrix[row][column] = 1
    end
  end

  return matrix
end


def matrix_convert_to_0(matrix)
  # raise NotImplementedError
  # loop through first [row][column] combination,
  matrix.each do |row| # every "element" inside matrix represents a row
    row.each do |column|
      # if it is zero, reset that rows values to 0
      if matrix[row][column] == 0
        # matrix[row] = 0
        # matrix[column] = 0
        puts "Got a zero!"
      end

    end
    # and the columns value to 0
  end

end

initialize_matrix(2,3)
puts matrix_convert_to_0(matrix)
