# Require all necessary files
require_relative './Classes/player'
require_relative './Classes/game'
require_relative './Classes/question'

# Initialize players
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

# Initialize game
game = Game.new(player1, player2)

#Start the game
game.start
