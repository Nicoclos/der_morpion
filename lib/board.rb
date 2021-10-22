class Board
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    attr_accessor :array
  
  
    def initialize
      #TO DO :
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
      @array = []
        for i in 0..8
        @array[i] = BoardCase.new
        end
    end
  
    def play_turn(player)
        puts "\n\n" + "Voici l'état de la grille:".underline.black.on_white
        self.show
        puts "\n" + "#{player.name}, c'est à ton tour!"
        puts "\u{3030}"*12
        puts "\nDans quelle case veux-tu te placer?"
        print "\u{2b1c}> "
        choice = (gets.chomp.to_i) - 1
        if (choice > 9) || (choice.negative?)
          puts "Option invalide!\u{1F6AB}\u{1F6AB}\u{1F6AB}\n\nEt voilà, un tour de perdu! \u{1F630}"
        elsif array[choice].value != ' '
          puts "Attention! La case est déjà prise! \u{1F6AB}\u{1F6AB}\u{1F6AB}\nBravo, tu passes ton tour! \u{1F630}"
        else
          array[choice].value = player.value
          puts "\nQuelle stratégie!!!\u{1F92F}"
        end
        puts ""
        puts " "*6 + "\u{2716}\u{1F525}"*10
    end

    def game_nul?
        nul = 0
        array.each do |i|
          if i.value == ' '
            nul += 1
          end
        end
        if nul == 0
          return true
        else
          return false
        end
    end
  
    def victory?
      #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      #vérification lignes
      if (array[0].value == array[1].value) && (array[1].value == array[2].value) && (array[0].value != ' ')
        self.show
        return true
      elsif (array[3].value == array[4].value) && (array[4].value == array[5].value) && (array[3].value != ' ')
        self.show
        return true
      elsif (array[6].value == array[7].value) && (array[7].value == array[8].value) && (array[6].value != ' ')
        self.show
        return true
      # vérification colonnes
      elsif (array[0].value == array[3].value) && (array[3].value == array[6].value) && (array[0].value != ' ')
        self.show
        return true
      elsif (array[1].value == array[4].value) && (array[4].value == array[7].value) && (array[1].value != ' ')
        self.show
        return true
      elsif (array[2].value == array[5].value) && (array[5].value == array[8].value) && (array[2].value != ' ')
        self.show
        return true
      # vérification des diagonales
      elsif (array[0].value == array[4].value) && (array[4].value == array[8].value) && (array[0].value != ' ')
        self.show
        return true
      elsif (array[2].value == array[4].value) && (array[4].value == array[6].value) && (array[2].value != ' ')
        self.show
        return true
      else
        return false
      end
    end

    def show
        puts "\n\n"
        puts ' ' * 10 + '-' * 19
        puts ' ' * 10 + ('|' + ' ' * 5) * 3 + '|'
        puts ' ' * 10 + "|  #{array[0].value}  |  #{array[1].value}  |  #{array[2].value}  |"
        puts ' ' * 10 + ('|' + ' ' * 4 + '1') + ('|' + ' ' * 4 + '2') + ('|' + ' ' * 4 + '3') + '|'
        puts ' ' * 10 + '-' * 19
        puts ' ' * 10 + ('|' + ' ' * 5) * 3 + '|'
        puts ' ' * 10 + "|  #{array[3].value}  |  #{array[4].value}  |  #{array[5].value}  |"
        puts ' ' * 10 + ('|' + ' ' * 4 + '4') + ('|' + ' ' * 4 + '5') + ('|' + ' ' * 4 + '6') + '|'
        puts ' ' * 10 + '-' * 19
        puts ' ' * 10 + ('|' + ' ' * 5) * 3 + '|'
        puts ' ' * 10 + "|  #{array[6].value}  |  #{array[7].value}  |  #{array[8].value}  |"
        puts ' ' * 10 + ('|' + ' ' * 4 + '7') + ('|' + ' ' * 4 + '8') + ('|' + ' ' * 4 + '9') + '|'
        puts ' ' * 10 + '-' * 19
    end
  
end