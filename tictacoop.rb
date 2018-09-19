require 'Matrix'

class Game
    $mat_tab=  [["1","2","3"], ["4","5","6"], ["7","8","9"]]
    def showtable
        for i in(0..2)
           for j in(0..2)
               print " |#{$mat_tab[i][j]}|"
           end
           puts
        end
    end
end

puts 'Welcome to TicTacToe Logic X/O'
#init_tab = [["1","2","3"], ["4","5","6"], ["7","8","9"]]
#showtable(init_tab)
tab = Game.new
tab.showtable()

puts '|X| Time to play, Put the number you want!'
number=gets.chomp
