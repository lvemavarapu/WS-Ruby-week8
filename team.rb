# Team - players,uniform,coach,staff,name,city,stadium
class Team 
    attr_reader :stadium, :wins

    def initialize(name,city,stadium,uniform,players,coach,staff)
        @name = name
        @city = city
        @stadium = stadium
        @uniform = uniform
        @players = players
        @coach = coach
        @staff = staff
        @wins = 0
        @losses = 0
    end
    # to_s is a default method to print the object
    def to_s
        return "#{@city} #{@name}"
    end
    def team_info
        puts "#{@city} #{@name}"
        puts "================="
        puts "Coach: #{@coach}"
        puts "================="
        puts "Players:"
        @players.each {|player| puts player}
        puts "================="
        puts "Staff for this game"
        @staff.each {|staff| puts staff}
        #puts "The current W-L balance is #{@wins}-#{@losses}"
    end
    def win 
        puts "#{@name} won the game"
        @wins +=1
    end
    def loss
        puts "#{@name} lost the game!"
        @losses +=1
    end
    def team_table_view
        puts "#{@city} #{@name} \t\t #{@wins} \t #{@losses}"
    end
end

