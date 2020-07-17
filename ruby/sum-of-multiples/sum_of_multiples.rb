=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples
    attr_reader :multiples

    def initialize(*multiples)
        @multiples = multiples
    end

    public

    def to(n)
        res = 0
        for i in 1...n
            res += i if multiple?(i)
        end
        return res
    end

    private 

    def multiple?(i)
        multiples.each{|m| return true if i%m==0} unless multiples.nil?
        return false
    end

end