require 'Matrix'        
#funcion para mostrar tablero
def nine_steps()
    table = [[1,2,3], [4,5,6], [7,8,9]]
    table_game = [[1,2,3], [4,5,6], [7,8,9]]
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
    end




def showtable(tab)
    system('cls')
    for i in(0..2)
       for j in(0..2)
           print " |#{tab[i][j]}|"
       end
       puts
    end
end
#funcion para obtener el juego de X sin que sea una casilla ya marcada
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
#funcion para obtener el juego de O sin que sea una casilla ya marcada
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

#Insertar valor de X en  tablero y mostrar tablero
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
    wins?(tab)
    puts    
end
#Insertar valor de O en  tablero y mostrar tablero
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
    wins?(tab)
    puts    
end

#Validacion del ganador en cada ingreso
def wins?(tab)
    #Tableros Ganadores
    x_wins = ["X","X","X"]
    o_wins = ["O","O","O"]

    #Validacion en diagonal
    if((0...3).collect {|i| tab[i][i]} == x_wins)
        puts "X is the Winner! Enter to play again!" 
        gets
        nine_steps()
        
    elsif ((0...3).collect {|i| tab[i][i]} == o_wins)
        puts "O is the Winner!! Enter to play again"
        gets
        nine_steps()
    #Validacion en diagonal invertida
    elsif ((0...3).collect {|i| tab[i][-i-1] } == x_wins)
        puts "X is the Winner! Enter to play again!" 
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[i][-i-1] } == o_wins)
        puts "O is the Winner!! Enter to play again"
        gets
        nine_steps()
    #Validacion renglones
    elsif((0...3).collect {|i| tab[0][i] } == x_wins)
        puts "X is the Winner! Enter to play again!" 
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[0][i] } == o_wins)
    puts "O is the Winner!! Enter to play again"
    gets
    nine_steps()
    elsif((0...3).collect {|i| tab[1][i] } == x_wins)
        puts "X is the Winner! Enter to play again!" 
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[1][i] } == o_wins)
        puts "O is the Winner!! Enter to play again"
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[2][i] } == x_wins)
        puts "X is the Winner! Enter to play again!" 
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[2][i] } == o_wins)
        puts "O is the Winner!! Enter to play again"
        gets
        nine_steps()

#Validando columnas
    elsif((0...3).collect {|i| tab[i][0] } == x_wins)
        puts "X is the Winner! Enter to play again!" 
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[i][0] } == o_wins)
        puts "O is the Winner!! Enter to play again"
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[i][1] } == x_wins)
        puts "X is the Winner! Enter to play again!" 
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[i][1] } == o_wins)
        puts "O is the Winner!! Enter to play again"
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[i][2] } == x_wins)
        puts "X is the Winner! Enter to play again!" 
        gets
        nine_steps()
    elsif((0...3).collect {|i| tab[i][2] } == o_wins)
        puts "O is the Winner!! Enter to play again"
        gets
        nine_steps()
    end
end




#Programa principial
puts 'Welcome to TicTacToe Logic X/O'
nine_steps()



