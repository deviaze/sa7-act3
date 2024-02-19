# adventure_game.rb
  # by dev chrysalis!
#
# Act-3 #2
  # Game with 3 rooms. Prompt player to enter room based on text menu
  # game ends when the player chooses  to exit
#

points = 0
rooms = [5, 10, 15]
choose = "Choose a room (1-3) to enter or 'exit' to end the game: "

puts "Welcome to the Adventure Game!" + "\nYou have 0 points.", ""

until (print choose) or (a = gets.chomp()) == "exit" do
  valid = (i = a.to_i).between?(1, 3)
  valid && (puts "You entered room #{i} and earned #{c = rooms[i - 1]} points.", "#{"" if points += c}")
  !valid && (puts "Invalid Room. Try again", "")
end
puts "Game over! You collected a total of #{points} points."
