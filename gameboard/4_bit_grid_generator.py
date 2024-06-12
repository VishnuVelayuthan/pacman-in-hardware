with open('binvals.txt', 'r') as file:
    lines=file.readlines()
bin_values = [[0]*4 for _ in range(64)]
grid = [[int(lines[i][j]) for j in range(8)] for i in range(8)]

for i in range(8):
    for j in range(8):
        if j == 0:
            left = 0
        else:
            left = grid[i][j-1]
        
        if j == 7:
            right = 0
        else:
            right = grid[i][j+1]
        
        if i == 0:
            up = 0
        else:
            up = grid[i-1][j]
        
        if i == 7:
            down = 0
        else:
            down = grid[i+1][j]
        
        bin_values[i*8 + j] = [left, right, up, down]

# Print out bin_values with Verilog syntax
print("reg[0:63][0:3] legal_grid={",end="")
for i in range(64):
    print("4\'b%d%d%d%d, " % (bin_values[i][0], bin_values[i][1], bin_values[i][2], bin_values[i][3]),end="")
