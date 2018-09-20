require 'Matrix'        
def showtable(tab)
    for i in(0..2)
       for j in(0..2)
           print " |#{tab[i][j]}|"
       end
       puts
    end
end

def number_in_x (num, tab)
    system('cls')
    tab[0][0]="X" if num == 1
    tab[0][1]="X" if num == 2
    tab[0][2]="X" if num == 3
    tab[1][0]="X" if num == 4
    tab[1][1]="X" if num == 5
    tab[1][2]="X" if num == 6
    tab[2][0]="X" if num == 7
    tab[2][1]="X" if num == 8
    tab[2][2]="X" if num == 9
    showtable(tab)
    puts    
end

def number_in_o (num, tab)
    system('cls')
    tab[0][0]="O" if num == 1
    tab[0][1]="O" if num == 2
    tab[0][2]="O" if num == 3
    tab[1][0]="O" if num == 4
    tab[1][1]="O" if num == 5
    tab[1][2]="O" if num == 6
    tab[2][0]="O" if num == 7
    tab[2][1]="O" if num == 8
    tab[2][2]="O" if num == 9
    showtable(tab)
    puts    
end

def get_x(table, selected)
    number=gets.to_i
    puts "this is #{number}"
    if selected.include?(number)
        while selected.include?(number)
            puts 'Add a new number thats mow in the table:'
            number=gets.to_i
        end
            selected.push number
            number_in_x(number, table)

    else
        selected.push number
        number_in_x(number, table)

    end
end
def get_o(table, selected)
    number=gets.to_i
    if selected.include?(number) || number<1
        while selected.include?(number)
            puts 'Add a new number thats mow in the table:'
            number=gets.to_i
        end
        selected.push number
        number_in_o(number, table)
    else
        selected.push number
        number_in_o(number, table)
    end
end
puts 'Welcome to TicTacToe Logic X/O'
table = [[1,2,3], [4,5,6], [7,8,9]]
x_wins = ["X","X","X"]
o_wins = ["O","O","O"]
selected= []
showtable(table)
puts '|X| Time to play, Put the number you want!'
get_x(table, selected)
puts '|O| Time to play, Put the number you want!'
get_o(table, selected)
puts '|X| Time to play, Put the number you want!'
get_x(table, selected)
puts '|O| Time to play, Put the number you want!'
get_o(table, selected)
puts '|X| Time to play, Put the number you want!'
get_x(table, selected)
puts '|O| Time to play, Put the number you want!'
get_o(table, selected)
puts '|X| Time to play, Put the number you want!'
get_x(table, selected)
puts '|O| Time to play, Put the number you want!'
get_o(table, selected)
puts '|X| Time to play, Put the number you want!'
get_x(table, selected)



