=begin
Write your code for the 'Binary Search Tree' exercise in this file. Make the tests in
`binary_search_tree_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search-tree` directory.
=end

# INCOMPLETE

class Bst
    attr_reader :data
    attr_accessor :left, :right

    def initialize(data)
        @data = data
        @left = nil
        @right = nil
    end

    public

    def insert(val)
        val <= @data ? insleft(val) : insright(val)
    end

    private 

    def insleft(val)
        @left ? @left.insert(val) : @left = Bst.new(val)
    end

    def insright(val)
        @right ? @right.insert(val) : @right = Bst.new(val)
    end
end
