class Team_Member 
    def initialize(name)
        @name = name
    end
    def to_s
        return @name
    end
    def train
        puts "#{@name} is training"
    end
    def play
        puts "#{@name} is playing"
    end
end