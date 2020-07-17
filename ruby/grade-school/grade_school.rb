=begin
Write your code for the 'Grade School' exercise in this file. Make the tests in
`grade_school_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grade-school` directory.
=end

class School    
    def initialize
        @students = Hash.new(Array.new)
    end

    def add(stu, grade)
        @students[grade].push(stu)
    end

    def students(grade)
        @students[grade].sort
    end

    def students_by_grade
        return nil
    end
end