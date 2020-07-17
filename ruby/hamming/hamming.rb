=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
    def self.compute(adn1, adn2)
        throw ArgumentError unless adn1.length == adn2.length

        res=0
        i=0
        adn1.length.times do
            res+=1 if adn1[i]!=adn2[i]
            i+=1
        end

        return res
    end    
end    