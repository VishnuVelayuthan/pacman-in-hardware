def grid_to_binary(filename):
    with open(filename, 'r') as file:
        grid = [line.strip() for line in file.readlines()]

    binary_grid = []
    for row in grid:
        binary_row = []
        for char in row:
            if char == 'X':
                binary_row.append('1\'b0, ')
            elif char in ['+','.']:
                binary_row.append('1\'b1, ')
            else:
                continue
        binary_grid.append(''.join(binary_row))

    return binary_grid

def print_grid(binary_grid):
    for row in binary_grid:
        print(row)

def print_verilog_array(binary_grid):
    
    print("reg [63:0] flattened_array = {", end="")
    for i, bit in enumerate(binary_grid):
        print(bit+ " ", end="")
        
    print("};")

if __name__ == "__main__":
    filename = "mazetest.txt"  # Change this to the path of your text file
    binary_grid = grid_to_binary(filename)
    print_grid(binary_grid)
    output_filename="bingrid.txt"
    with open(output_filename,'w') as file:
        for row in binary_grid:
            file.write(row + '\n')
    print_verilog_array(binary_grid)
