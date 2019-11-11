require_relative 'Game'
require_relative 'Player'
print "Ready to start new game? (y/n) "
start = $stdin.gets.chomp

if start == 'Y' || start == 'y'
  game = Game.new()
  player_one = Player.new(1)
  player_two = Player.new(2)

  game.run_game(game, player_one, player_two)
elsif start == 'N' || start == 'n'
  puts "Goodbye!"
end
