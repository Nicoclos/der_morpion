require 'bundler'
Bundler.require

require_relative 'lib/player'

class Application
    
    def perform
        puts ("----------------------------------------------")
        puts ("|    Bienvenue pour une partie de MORPION    |")
        puts ("| Votre objectif : vaincre votre adversaire! |")
        puts ("| Comment ? En alignant 3 symboles ! Forza ! |")
        puts ("----------------------------------------------")
        gets.chomp
        puts ("Comment s'appelle le premier joueur ?")
        print ("> ")
        first_player = gets.chomp.to_s

        playerone = Player.new(first_player)
    end
end

# binding.pry
