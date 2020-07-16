=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
    def initialize(line)
        @matrix = line.split("\n").map{|s| s.split.map{|i| i.to_i}}
    end    

    def rows
        @matrix
    end

    def columns
        rows.transpose
    end    
end    