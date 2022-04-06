require "faker"
require_relative("./team.rb")
require_relative("./league.rb")
require_relative("./team_member.rb")
require_relative("./player.rb")
require_relative("./coach.rb")
require_relative("./staff.rb")

def data
    #create an array of players and add it to the team 
    #Create a coach object and add it to the team 
    #Create an array of members and add it to the team 
    team1_players = []
    team2_players = []
    team3_players = []
    team4_players = []
    for i in 1..20
        team1_players.push(Player.new(Faker::Sports::Basketball.player, i , Faker::Sports::Basketball.position))
        team2_players << Player.new(Faker::Sports::Basketball.player, i , Faker::Sports::Basketball.position)
        team3_players << Player.new(Faker::Sports::Basketball.player, i , Faker::Sports::Basketball.position)
        team4_players << Player.new(Faker::Sports::Basketball.player, i , Faker::Sports::Basketball.position)
    end
    team1_staff = []
    team2_staff = []
    team3_staff = []
    team4_staff = []

    for i in 1..3
        team1_staff << Staff.new(Faker::Name.name, Faker::Job.position )
        team2_staff << Staff.new(Faker::Name.name, Faker::Job.position )
        team3_staff << Staff.new(Faker::Name.name, Faker::Job.position )
        team4_staff << Staff.new(Faker::Name.name, Faker::Job.position )
    end


    coach1 = Coach.new(Faker::Sports::Basketball.coach)
    coach2 = Coach.new(Faker::Sports::Basketball.coach)
    coach3 = Coach.new(Faker::Sports::Basketball.coach)
    coach4 = Coach.new(Faker::Sports::Basketball.coach)


    team1 = Team.new("Kings", "Sydney", "Qudos Bank Arena", "yellow", team1_players, coach1, team1_staff)
    team2 = Team.new("Taipans", "Cairns", "Cairns Pop-Up Arena", "magenta", team2_players, coach2, team2_staff)
    team3 = Team.new("Bullets", "Brisbane", "Nissan Arena", "blue", team3_players, coach3, team3_staff)
    team4 = Team.new("Hawks", "Illawarra", "WIN Entertainment Centre", "red", team4_players, coach4, team4_staff)

    # team1.team_info
    # team2.team_info
    # team3.team_info
    array_teams = [team1, team2, team3, team4]
    league = League.new("BBL", "Basketball", "Brisbane Basketball League", array_teams )
    return league
end