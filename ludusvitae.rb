# LUDUS VITAE 0.0.I
# rubynettes (c) 2016

# WHAT ARE VARIABLES I WOULD NEED?

is_alive = false
position = 0
generation = 0
cells = []
random = rand(100)


def startGame
system("clear")
end
startGame

def board
    for i in 1..10 do
 
        for i in 1..10 do
        print rand(2).to_s + " "
        end
        puts "\n"
    end
end

board

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













# class currentBoard end
# new.currentBoard


