import cv2
import numpy as np

# Load the maze image
maze_image = cv2.imread('maze_jpg.jpg')
black = (0, 0, 0)
purple = (128, 0, 128)
# Convert the image to HSV color space
maze_hsv = cv2.cvtColor(maze_image, cv2.COLOR_BGR2HSV)
maze_image = np.zeros((264, 240, 3), dtype=np.uint8)
# Define the range of blue color in HSV
blue_lower = np.array([100, 100, 50])
blue_upper = np.array([130, 255, 255])

# Create a mask for the blue regions
blue_mask = cv2.inRange(maze_hsv, blue_lower, blue_upper)

# Define the dimensions of the tiles and the maze
tile_height = 248 / 33
tile_width = 224 / 30
maze_height_tiles = 33
maze_width_tiles = 30


# Initialize the 1D array to store the maze information
maze_info_array = np.zeros((maze_height_tiles, maze_width_tiles), dtype=int)

# Iterate over each tile
for y in range(maze_height_tiles):
    for x in range(maze_width_tiles):
        # Define the region of interest (ROI) for the current tile
        roi_x1 = int(x * tile_width)
        roi_x2 = int((x + 1) * tile_width)
        roi_y1 = int(y * tile_height)
        roi_y2 = int((y + 1) * tile_height)

        # Extract the ROI from the blue mask
        tile_blue_mask = blue_mask[roi_y1:roi_y2, roi_x1:roi_x2]

        # Check if the tile contains blue
        if np.any(tile_blue_mask == 255):
           
            maze_info_array[y,x]=0 # Blue detected (maze border)
            color=purple
        else:
            maze_info_array[y,x]=1  # No blue detected (empty space)
            color=black
            #painting 12x12 square of color to fit a 396x330 square for monitor
        for i in range(y*8,y*8+8):
            for j in range(x*8,x*8+8):
                maze_image[i,j]=color
        #maze_image[roi_y1:roi_y2, roi_x1:roi_x2] = color
        #maze_image[y*12:y*12+12, x*12,x*12+12]=color

# Convert the list to a NumPy array
maze_info_array = np.array(maze_info_array)

# Print the 1D array
print(maze_info_array)
maze_flat=maze_info_array.flatten()
print(maze_flat)
verilog_code = "reg [{}:0] packed_array = {{".format(len(maze_flat) - 1)
verilog_code += ", ".join(str(bit) for bit in maze_flat)
verilog_code += "};"

print(verilog_code)
cv2.imshow('Maze Image', maze_image)
cv2.waitKey(0)
cv2.imwrite('maze_with_color.png', maze_image)
