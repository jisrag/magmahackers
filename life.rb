require 'Matrix'
def fill_mat(init, size)
    for i in 0...size
        for j in 0...size
            init[i][j]=rand(0..1)
        end
    end
    return init
end
def fill_neig(neig)
    for i in 0...neig.length
        for j in 0...neig.length
            neig[i][j]=0
        end
    end
    return neig
end

def showtable(table)

  size=table.length
   for i in(0...size)
      for j in(0...size)
       print" #{table[i][j]} "
   end
   puts
 end

def update_init(init, neig)
    for row in 0...init.length-1
        col=0
        for col in 0...init.length-1
            if init[row][col]==0
                if neig[row][col]==3
                    init[row][col]=1
                else
                    init[row][col]=0
                end
            else
                if neig[row][col]<=1
                    init[row][col]=0
                else
                    if neig[row][col]>=4
                        init[row][col]=0
                    else
                       if neig[row][col]==2 ||  neig [row][col]==3
                        init[row][col]=1
                       end
                    end
                end
            end
        end
    end
    return init
end


end

def print_next(init, neig)
    puts "Enter to continue!   OR Ctrl+C to exit"
    neig=count_neig(init, neig)
    init=update_init(init, neig)
    gets
    system('cls')
    showtable(init)
end

def count_neig(init, neig)
    neig=count_center(init, neig)
    neig=count_left(init, neig)
    neig=count_right(init, neig)
    neig=count_up(init, neig)
    neig=count_down(init, neig)
    neig=count_left_up(init, neig)
    neig=count_left_down(init, neig)
    neig=count_right_up(init, neig)
    neig=count_right_down(init, neig)
    return neig;
end

def count_center(init, neig)
    row=1
    col=1
    counter=0
    size=init.length
    for i in row...size-1
        col=1
        for j in col...size-1
            counter=0
            counter+=1 if init[i-1][j-1]==1
            counter+=1 if init[i-1][j]==1
            counter+=1 if init[i-1][j+1]==1
            counter+=1 if init[i][j+1]==1
            counter+=1 if init[i+1][j+1]==1
            counter+=1 if init[i+1][j]==1
            counter+=1 if init[i+1][j-1]==1
            counter+=1 if init[i][j-1]==1    
            neig[i][j]=counter
        end
    end
    return neig
end

def count_left(init, neig)
    row=1
    col=0
    counter=0
    size=init.length
    for i in row...size-1
            counter=0
            counter+=1 if init[i-1][col]==1
            counter+=1 if init[i+1][col]==1
            counter+=1 if init[i-1][col+1]==1
            counter+=1 if init[i][col+1]==1
            counter+=1 if init[i+1][col+1]==1   
            neig[i][col]=counter
    end
    return neig
end

def count_right(init, neig)
    size=init.length
    row=1
    col=size-1
    for i in row...size-1
            counter=0
            counter+=1 if init[i-1][col]==1
            counter+=1 if init[i-1][col-1]==1
            counter+=1 if init[i][col-1]==1
            counter+=1 if init[i+1][col-1]==1
            counter+=1 if init[i+1][col]==1   
            neig[i][col]=counter
    end
    return neig
end

def count_up(init, neig)
    size=init.length
    row=0
    for col in 1...size-1
            counter=0
            counter+=1 if init[row][col-1]==1
            counter+=1 if init[row+1][col-1]==1
            counter+=1 if init[row+1][col]==1
            counter+=1 if init[row+1][col+1]==1
            counter+=1 if init[row][col+1]==1   
            neig[row][col]=counter
    end
    return neig
end

def count_down(init, neig)
    size=init.length
    row=size-1
    for col in 1...size-1
            counter=0
            counter+=1 if init[row][col-1]==1
            counter+=1 if init[row-1][col-1]==1
            counter+=1 if init[row-1][col]==1
            counter+=1 if init[row-1][col+1]==1
            counter+=1 if init[row][col+1]==1   
            neig[row][col]=counter
    end
    return neig
end

def count_left_up(init, neig)
    row=0
    col=0
    counter=0
    counter+=1 if init[row][col+1]==1
    counter+=1 if init[row+1][col]==1
    counter+=1 if init[row+1][col+1]==1
    neig[row][col]=counter
    return neig
end

def count_left_down(init, neig)
    row=init.length-1
    col=0
    counter=0
    counter+=1 if init[row-1][col]==1
    counter+=1 if init[row-1][col+1]==1
    counter+=1 if init[row][col+1]==1
    neig[row][col]=counter
    return neig
end

def count_right_up(init, neig)
    row=0
    col=init.length-1
    counter=0
    counter+=1 if init[row][col-1]==1
    counter+=1 if init[row+1][col-1]==1
    counter+=1 if init[row+1][col]==1
    neig[row][col]=counter
    return neig
end

def count_right_down(init, neig)
    row=init.length-1
    col=init.length-1
    counter=0
    counter+=1 if init[row-1][col]==1
    counter+=1 if init[row-1][col-1]==1
    counter+=1 if init[row][col-1]==1
    neig[row][col]=counter
    return neig
end


    puts 'THE GAME OF LIFE'
    puts 'Please write the matrix size (5)'
    #We get the Matrix Size
    size=gets.chomp.to_i
    # Create and Fill in the initial Matriz With 1 or 0
    init_mat= Array.new(size){Array.new(size)}
    init_mat=fill_mat(init_mat, size)
    showtable(init_mat)
    #Create Neighbors Matrix
    puts
    neig_mat= Array.new(size){Array.new(size)}
    neig_mat=fill_neig(neig_mat)
    loop do
    print_next(init_mat, neig_mat)
    end

