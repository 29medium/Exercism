=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains
    def self.square(n)
        throw ArgumentError if (n<1 || n>64)

        2**(n-1)
    end

    def self.total
        res = 0
        for i in 0..63 do 
            res += 2**i
        end
        return res
    end
end