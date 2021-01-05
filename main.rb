require './player'
require './question'
require './game'

# Create new game instance
game = Game.new

# Start game (executes loop until one player runs out of lives)
game.start
