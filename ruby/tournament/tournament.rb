=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

class Team
    attr_reader :wins, :losses, :draws

    def inicialize(name)
        @name = name
        @wins = 0
        @losses = 0
        @draws =0
    end

    def matches 
        return wins + draws + losses
    end

    def points 
        return wins*3 + draws
    end

    def won
        @wins +=1
    end 

    def lost
        @losses +=1
    end

    def tied
        @draws +=1
    end
end

class Tournament
    def initialize
        @teams = Hash.new {|hash, key| hash[key] = Team.new(key)}
    end

    def self.tally(input)
        new.parse(input) 
    end

    def parse(input)
        input.split("\n").map{|i| i.split(";")}.each do |game|
            case game[2]
                when "win"
                    @teams[game[0]].won
                    @teams[game[1]].lost
                when "loss"
                    @teams[game[0]].lost
                    @teams[game[1]].won
                when "draw"
                    @teams[game[0]].tied
                    @teams[game[1]].tied
            end
        end
    end
end