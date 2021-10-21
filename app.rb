require 'bundler'
Bundler.require

require_relative 'lib/player'

def welcome
    puts ("----------------------------------------------")
    puts ("|    Bienvenue pour une partie de MORPION    |")
    puts ("| Votre objectif : vaincre votre adversaire! |")
    puts ("| Comment ? En alignant 3 symboles ! Forza ! |")
    puts ("----------------------------------------------")
    gets.chomp
end


def player_names (first_player)
    puts ("Comment s'appelle le premier joueur ?")
    puts ("> "
    first_player = gets.chomp
    user = Player.new(first_player)
end

binding.pry
