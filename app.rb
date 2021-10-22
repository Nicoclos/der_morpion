require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/board'
require_relative 'lib/boardcase'

class Application
    def perform
      # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
      current_game = Game.new
      current_game.turn
      while current_game.new_round
        current_game.turn
      end
      current_game.game_end
  
    end
  
end
  
  
Application.new.perform
