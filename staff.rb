class Staff < Team_Member

    def initialize(name, role)
        # @name = name
        super(name) 
        @role = role
       
    end

    def train
        puts "#{@name} is helping to set up the training"
    end
    def play
        puts "#{@name} is assisting the team for the game as #{@role}"
    end

end