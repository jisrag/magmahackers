class Tictac
    def show
        print "Hola Cabrones"
    end
    def showtable
        system('cls')
        for i in(0..2)
           for j in(0..2)
               print " |#{@tab[i][j]}|"
           end
           puts
        end
    end
    def nine_steps
        @tab= [[1,2,3], [4,5,6], [7,8,9]]
       # @table_game = [[1,2,3], [4,5,6], [7,8,9]]
        @selected= []
        self.showtable
        self.get_x
        self.get_o
        self.get_x
        self.get_o
        self.get_x
        self.get_o
        self.get_x
        self.get_o
        self.get_x
    end
    def nine_o_lost_steps
        @tab = [[1,2,3], [4,5,6], [7,8,9]]
       #@table_game = [[1,2,3], [4,5,6], [7,8,9]]
        @selected= []
        self.showtable
        self.get_o
        self.get_x
        self.get_o
        self.get_x
        self.get_o
        self.get_x
        self.get_o
        self.get_x
        self.get_o
    end
    def get_x
        puts '|X|BEGINS Time to play, Put the number you want!'
        @num=gets.to_i
        puts "this is #{@num}"
        if @selected.include?(@num)
            while @selected.include?(@num)
                puts 'Add a new number thats mow in the table:'
                @numr=gets.to_i
            end
                @selected.push @number
                self.num_in_x
    
        else
            @selected.push @num
            self.number_in_x
    
        end
    end

    def get_o
        puts '|O| Time to play, Put the number you want!'
        @num=gets.to_i
        if @selected.include?(@number) || @num<1
            while @selected.include?(@num)
                puts 'Add a new number thats mow in the table:'
                @num=gets.to_i
            end
            @selected.push @num
            self.number_in_o
        else
            @selected.push @num
            self.number_in_o
        end
     
    end
    def number_in_o
        system('cls')
        @tab[0][0]="O" if @num == 1
        @tab[0][1]="O" if @num == 2
        @tab[0][2]="O" if @num == 3
        @tab[1][0]="O" if @num == 4
        @tab[1][1]="O" if @num == 5
        @tab[1][2]="O" if @num == 6
        @tab[2][0]="O" if @num == 7
        @tab[2][1]="O" if @num == 8
        @tab[2][2]="O" if @num == 9
        @penultimo="X"
        self.showtable
        self.wins?
        puts    
    end

    def number_in_x 
        system('cls')
        @tab[0][0]="X" if @num == 1
        @tab[0][1]="X" if @num == 2
        @tab[0][2]="X" if @num == 3
        @tab[1][0]="X" if @num == 4
        @tab[1][1]="X" if @num == 5
        @tab[1][2]="X" if @num == 6
        @tab[2][0]="X" if @num == 7
        @tab[2][1]="X" if @num == 8
        @tab[2][2]="X" if @num == 9
        @penultimo="O"
        self.showtable
        self.wins?
        puts    
    end
    def wins?
        #Tableros Ganadores
        @x_wins = ["X","X","X"]
        @o_wins = ["O","O","O"]
    
        #puts "El length es: #{tab.length}"
        #Validacion en diagonal
        if((0...3).collect {|i| @tab[i][i]} == @x_wins)
            puts "X is the Winner! Enter to play again!" 
            gets
            self.nine_o_lost_steps
            
        elsif ((0...3).collect {|i| @tab[i][i]} == @o_wins)
            puts "O is the Winner!! Enter to play again"
            gets
            self.nine_steps
        #Validacion en diagonal invertida
        elsif ((0...3).collect {|i| @tab[i][-i-1] } == @x_wins)
            puts "X is the Winner! Enter to play again!" 
            gets
            self.nine_o_lost_steps
        elsif((0...3).collect {|i| @tab[i][-i-1] } == @o_wins)
            puts "O is the Winner!! Enter to play again"
            gets
            self.nine_steps
        #Validacion renglones
        elsif((0...3).collect {|i| @tab[0][i] } == @x_wins)
            puts "X is the Winner! Enter to play again!" 
            gets
            self.nine_o_lost_steps
        elsif((0...3).collect {|i| @tab[0][i] } == @o_wins)
        puts "O is the Winner!! Enter to play again"
        gets
        self.nine_steps
        elsif((0...3).collect {|i| @tab[1][i] } == @x_wins)
            puts "X is the Winner! Enter to play again!" 
            gets
            self.nine_o_lost_steps
        elsif((0...3).collect {|i| @tab[1][i] } == @o_wins)
            puts "O is the Winner!! Enter to play again"
            gets
            self.nine_steps
        elsif((0...3).collect {|i| @tab[2][i] } == @x_wins)
            puts "X is the Winner! Enter to play again!" 
            gets
            self.nine_o_lost_steps
        elsif((0...3).collect {|i| @tab[2][i] } == @o_wins)
            puts "O is the Winner!! Enter to play again"
            gets
            self.nine_steps
    
    #Validando columnas
        elsif((0...3).collect {|i| @tab[i][0] } == @x_wins)
            puts "X is the Winner! Enter to play again!" 
            gets
            self.nine_o_lost_steps
        elsif((0...3).collect {|i| @tab[i][0] } == @o_wins)
            puts "O is the Winner!! Enter to play again"
            gets
            self.nine_steps
        elsif((0...3).collect {|i| @tab[i][1] } == @x_wins)
            puts "X is the Winner! Enter to play again!" 
            gets
            self.nine_o_lost_steps
        elsif((0...3).collect {|i| @tab[i][1] } == @o_wins)
            puts "O is the Winner!! Enter to play again"
            gets
            self.nine_steps
        elsif((0...3).collect {|i| @tab[i][2] } == @x_wins)
            puts "X is the Winner! Enter to play again!" 
            gets
            self.nine_o_lost_steps
        elsif((0...3).collect {|i| @tab[i][2] } == @o_wins)
            puts "O is the Winner!! Enter to play again"
            gets
            self.nine_steps
        #Validamos cuando no gana nadie    
        elsif (@selected.length == 9)
            puts "NOBODY Wins!! Enter to play again"
            gets
            if @penultimo=="X"
            self.nine_steps
            else
            self.nine_o_lost_steps
            end
        end
    end
    
    
end
