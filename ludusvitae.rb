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


def boardPrinter (cells)
i = 0
    while (i < 10) do
        print cells[i] + " "
        i += 1
        end
    print "\n"
end
boardPrinter(cells)


puts cells[23]
puts cells[99]
puts cells.size



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


