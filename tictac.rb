require 'Matrix'

def showtable(table)
    for i in(0..2)
       for j in(0..2)
           print " |#{table[i][j]}|"
       end
       puts
    end
end

def main_fun
puts 'Welcome to TicTacToe Logic X/O'
init_tab = [["1","2","3"], ["4","5","6"], ["7","8","9"]]
showtable(init_tab)
puts '|X| Time to play, Put the number you want!'
number=gets.chomp

end

main_fun