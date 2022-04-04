require "faker"
require_relative("./team.rb")
require_relative("./league.rb")
require_relative("./team_member.rb")
require_relative("./player.rb")
require_relative("./coach.rb")
require_relative("./staff.rb")

coach1 = Coach.new(Faker::Sports::Basketball.coach)
coach2 = Coach.new(Faker::Sports::Basketball.coach)
coach3 = Coach.new(Faker::Sports::Basketball.coach)
# puts coach1
# puts coach2
# puts coach3

team1_players =[]
team2_players =[]
team3_players =[]

for i in 1..20
    team1_players.push(Player.new(Faker::Sports::Basketball.player,i,Faker::Sports::Basketball.position))
    team2_players.push(Player.new(Faker::Sports::Basketball.player,i,Faker::Sports::Basketball.position))
    team3_players.push(Player.new(Faker::Sports::Basketball.player,i,Faker::Sports::Basketball.position))
       
end
team1_staff=[]
team2_staff=[]
team3_staff=[]
for i in 1..3
    team1_staff.push(Staff.new(Faker::Name.name , Faker::Job.position))
    team2_staff.push(Staff.new(Faker::Name.name , Faker::Job.position))
    team3_staff.push(Staff.new(Faker::Name.name , Faker::Job.position))
end
team1 =Team.new("Lions","Brisbane","Suncorp","Maroon, black", team1_players,coach1,team1_staff)
team2 =Team.new("Parrots","Sydney","Sunstat","green, yellow,black", team2_players,coach2,team2_staff)
team3 =Team.new("Mermaids","Adelaide","Ocean","Maroon, black", team3_players,coach3,team3_staff)
team1.team_info
team2.team_info
team3.team_info


array_teams = [team1,team2,team3]
league1 = League.new("BML","multisport","Brisbane Multi League", array_teams)
tm1 =Team_Member.new(" James Smith")


