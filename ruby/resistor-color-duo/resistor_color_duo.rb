=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo

  def self.value(colors)
    i=0
    res = ""

    colors.each do |c|
      break if i>1
      case c
        when "black" then res<<"0"
        when "brown" then res<<"1"
        when "red" then res<<"2"
        when "orange" then res<<"3"
        when "yellow" then res<<"4"
        when "green" then res<<"5"
        when "blue" then res<<"6"
        when "violet" then res<<"7"
        when "grey" then res<<"8"
        when "white" then res<<"9"
        else res<<"0"
      end  
      i+=1
    end
    return res.to_i
  end
end    