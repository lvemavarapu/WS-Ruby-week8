# Team - players,uniform,coach,staff,name,city,stadium
class Team 
    def initialize(name,city,stadium,uniform,players,coach,staff)
        @name = name
        @city = city
        @stadium = stadium
        @uniform = uniform
        @players = players
        @coach = coach
        @staff = staff
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
        puts " Staff for this game"
        @staff.each {|staff| puts staff}
    end
end

