require 'bundler'
Bundler.require

require_relative 'lib/morpion'

def welcome
    puts ("----------------------------------------------")
    puts ("|    Bienvenue pour une partie de MORPION    |")
    puts ("| Votre objectif : vaincre votre adversaire! |")
    puts ("| Comment ? En alignant 3 symboles ! Forza ! |")
    puts ("----------------------------------------------")
    gets.chomp
end


#Initialisation joueur
puts ("Comment dois-je vous appeler ?")
pseudo = gets.chomp
user = HumanPlayer.new(pseudo)