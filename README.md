# Maze Changing Instructions

If you want to change which maze is being used, since we can't have dynamically allocated arrays, you have to manually change these locations:

- pellet_controller.v
  - change output reg pellet_arr's size
- maze_view.v
  - need to change the bin_val array
- 4_bit_legal_moves.v
  - need to change the legal moves array
