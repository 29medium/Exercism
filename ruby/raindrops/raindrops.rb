=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
    def self.convert(n)
        res = String.new
        res<<"Pling" if n%3==0
        res<<"Plang" if n%5==0
        res<<"Plong" if n%7==0
        res = n.to_s if res.empty?
        return res
    end
end