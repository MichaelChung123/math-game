require './game'
require './player'

player1 = Player.new("Player1", 3)
player2 = Player.new("Player2", 3)

game = Game.new(player1, player2)

puts game.display_turn();
