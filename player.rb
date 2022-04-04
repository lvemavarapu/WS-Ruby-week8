# player - name, number, position,train,play

class Player < Team_Member

    def initialize(name, number,position)
        # @name = name
        super(name) 
        @number = number
        @position = position
    end
    def to_s
        return "#{@number} #{@name}"
    end
    def train
        puts "#{@name} is getting trained for the game"
    end
    def play
        puts "#{@name} is actually playing in the league"
    end

end