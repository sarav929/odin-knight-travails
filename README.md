## Knight Travails

Project created to practice graphs and search algorithms (DFS & BFS) as part of the Odin Project. 

The assignment was to build a function to find the shortest path for a knight piece on the chessboard to go from a cell to another. The start and destination coordinates are taken as arguments in knight_moves and the shortest path is printed out in the command line with print_path. 

I first created a function in the Knight class to generate all possible moves according to game rules given a current position, validating them according the the board size before returning the array. 
The main scope of the assignment was chosing the most efficient way to find the shortest path - I chose to use the BFS algorithm: because the chessboard is a sparse and unweighted graph it ensures the first path we get is the shortest. I also made sure to keep track of visited nodes (2D array) and their parents (hash) while iterating through them in order to reconstruct the path later with get_path. 



