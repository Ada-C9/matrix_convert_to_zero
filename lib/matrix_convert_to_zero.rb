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


def matrix_convert_to_0(input_matrix)
  rows = input_matrix.size
  columns = input_matrix[0].size

  rows.times do |row|
    columns.times do |column|

      if input_matrix[row][column] == 0
        # setting rows to 0
        columns.times do |result_col|
          input_matrix[row][result_col] = -1 if (input_matrix[row][result_col] != 0)
        end

        rows.times do |result_row|
          input_matrix[result_row][column] = -1 if (input_matrix[result_row][column] != 0)
        end
      end
    end
  end

  rows.times do |row|
    columns.times do |column|
      if input_matrix[row][column] == -1
        input_matrix[row][column] = 0
      end
    end
  end
end

# m = [[1,1,1],[1,0,1],[1,1,1],[1,1,0]]
# m = [[1,1,1,1,1],[1,1,1,0,1],[1,1,1,1,0]]
# m = [[1,0,1],[1,0,1],[1,0,1],[1,0,1],[1,0,1]]
# matrix_convert_to_0(m)
#
# puts "#{m}"
