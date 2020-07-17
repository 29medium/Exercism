=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

#INCOMPLETE

class Phrase
    def initialize(phrase)
        @words = Hash.new(0)
        line = phrase.split(/\b[\w']+\b/).each do |w|
            @words[w.downcase] += 1
        end    
    end

    def word_count
        @words
    end    
end    