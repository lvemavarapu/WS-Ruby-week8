class Coach < Team_Member

    def initialize(name)
        # @name = name
        super(name) 
       
    end
    def to_s
        return "Coach:#{@name}"
    end
    def to_s
        return "#{@name} #{@number} #{@position}"
    end
    def train
        puts "#{@name} is leading the training"
    end
    def play
        puts "#{@name} is leading the team for the game"
    end
end