require "tty-prompt"
require_relative("./data.rb")

# return of the method data is stored in league(variable)
   $league = data
   # puts league
   # puts league.print_teams
   $prompt = TTY::Prompt.new
 
   def select_option
      answer = $prompt.select("what is your option?",["Ladder","Team's Info","Play game","Exit"])
      answer
   end

   # method to display the team's info when the option "Team's Info" is selected
   def select_team
      team = $prompt.select("Select your team",$league.print_teams)
      return team
   end
   def play_game(home, away)
      puts "Game between #{home} and #{away} and the game happening at #{home.stadium}"
      print "Enter a score for #{home}:"
      score_home = gets.chomp.to_i
      print "Enter a score for #{away}:"
      score_away = gets.chomp.to_i
      if score_home > score_away
         home.win
         away.loss
      else
         away.win
         home.loss
      end 
   end

   system "clear"
   puts "Welcome to the #{$league}"
   option =""
   while option != "Exit"
      option = select_option
      case option 
      when "Ladder"
        $league.print_ladder
      when "Team's Info"
         team = select_team
         puts team.team_info
      when "Play game"
         home = select_team
         away = select_team
         #Invoking the method play_game
         play_game(home, away)
      else 
         puts " See you next time!"
         next
      end
      print "Press enter to continue.."
      gets 
      system "clear"
   end
 