# LUDUS VITAE 0.0.I
# rubynettes (c) 2016

# WHAT ARE VARIABLES I WOULD NEED?

is_alive = false
position = 0
generation = 0
cells = []
cell = 0

class STARTGAME
    system("clear")
end

STARTGAME.new

def board (cells,cell)
    for i in 1..100 do
            cell = rand(2)
            if cell == 1
            cell = "■"
            else
            cell = "□"
            end
            cells.push(cell)
    end
end

board(cells,cell)

# IT WORKS THIS FAR

def boardPrinter (cells)
i = 0
    while (i < 10) do
        print cells[i] + " "
        i += 1
        end
    print "\n"
end
boardPrinter(cells)

def aliveChecker(cells)
rule1, rule2, rule3, rule4 = false
i = 0
for i in 1..10 do
    puts "\n"
    if cells[i] == "■"
        puts i.to_s + ": It's alive"
        isalive = true
    else
        puts i.to_s + ": It's dead"
        isalive = false
    end
    
# Rule 1
    if cells[i-1] && cells[i+1] == "□"
        puts "It's not gonna make it: " + cells[i-1] + ", " + cells[i+1] 
        rule1 = false
        isalive = false
        puts "Rule 1 passed? " + rule1.to_s
    else
        puts "It might have a chance: " + cells[i-1] + ", " + cells[i+1]
        rule1 = true
        isalive = true
        puts "Rule 1 passed? " + rule1.to_s       
    end
    
# Rule 2
    if (cells[i-1] || cells[-2]) && (cells[i+1] || cells[i+2]) == "□"
        puts "Dead next because " + cells[i-2] + ", " + cells[i-1] + " and " + cells[i+1] + ", " + cells[i+2] 
        rule2 = false
        puts "Rule 2 passed? " + rule2.to_s  
    else
        puts "Alive next because " + cells[i-2] + ", " + cells[i-1] + " and " + cells[i+1] + ", " + cells[i+2] 
        rule2 = true
        puts "Rule 2 passed? " + rule2.to_s    
    end

# Rule 3
    if (cells[i-3] || cells[i+3]) == "■" && rule2 == true 
        rule3 = true
        puts "Rule 3 passed? " + rule3.to_s  
    else
        rule3 = false
        puts "Rule 3 passed? " + rule3.to_s    
    end

# Rule 4
    if (cells[i-3] || cells[i+3]) == "■" && isalive == false 
        rule4 = true
        puts "Rule 4 passed? " + rule4.to_s  
    else
        rule4 = false
        puts "Rule 4 passed? " + rule4.to_s    
    end    
    
end    
end

aliveChecker(cells)




# Write down the rules!
#   Any live cell with fewer than two live neighbours dies, as if caused by under-population.
#   Any live cell with two or three live neighbours lives on to the next generation.
#   Any live cell with more than three live neighbours dies, as if by over-population.
#   Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


# WHAT IS IT SUPPOSED TO DO?
## - For each generation do
## - create a board
## - +1 Generation
## - Fill the board with cells in accordance to rules (first gen: random)
## - check alive / dead status
## - update variables



# Create a current board and a next board

# Visualize the board in CLI -- hell yeah


