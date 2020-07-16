=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
    attr_reader :line 

    def initialize(line)
        @line = line
    end

    def slices(n)
        throw :ArgumentError if n>line.length
        
        i=0
        res=Array.new
        (line.length-n+1).times do
            res.push(line.slice(i, n))
            i+=1
        end

        return res
    end    
end    