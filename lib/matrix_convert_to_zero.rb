# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
require "pry"
require "awesome_print"

def matrix_convert_to_0(matrix)
  row_count = matrix.length
  column_count = matrix[0].length
  rows = []
  columns = []
  row_count.times do |row_index|
    column_index = 0
    matrix[row_index].each do |value|
      if value == 0
        rows << row_index unless rows.include?(row_index)
        columns << column_index
      end
      column_index += 1
    end
  end

  return if rows.empty? && columns.empty?

  rows.each do |row_index|
    column_count.times do |column_index|
      matrix[row_index][column_index] = 0
    end
  end

  row_count.times do |row_index|
    columns.each do |column_index|
      matrix[row_index][column_index] = 0
    end
  end
end
