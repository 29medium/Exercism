=begin
Write your code for the 'Perfect Numbers' exercise in this file. Make the tests in
`perfect_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/perfect-numbers` directory.
=end

class PerfectNumber
    def self.classify(n)
        raise RuntimeError if n<1

        num = mult(n).reduce(:+)

        if num==n
            return "perfect"
        elsif num>n 
            return "abundant"
        else
            return "deficient"
        end
    end

    def self.mult(n)
        res = Array.new

        for i in 1...n 
            res.push(i) if n%i==0
        end

        return res
    end
end