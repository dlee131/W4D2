module Slideable

    def horizontal_dirs
        # getter for horizontal_dirs
        @horizontal_dirs
    end

    def diagonal_dirs
        # getter for diagonal_dirs
        @diagonal_dirs
    end
    
    # should return an array of places a piece can move to
    def moves
        # create an array to collect moves
    
        # iterate over each of the directions in which a slideable piece
        # can move 
    
            # use the piece subclass' #move_dirs method to get this info
            # fo each direction collect all the possible moves in thats direction
    
            # and add them to your moves array
            # (use the grow_unblocked_moves_in_dir helper method)
    
            # return the final array of moves (containing all possible moves in all directions)
    end
    
    private
    
    def move_dirs
        # subclass implements this 
        raise NotImplementedError # this only executes if we have 
        # forgotten to implement it in our subclass
    end
    
    # this helper method is only responsible for collecting all moves
    # in a given direction
    
    # the given direction is represented by 2 args, the combination
    # of dx and dy
    def grow_unblocked_moves_in_dir(dx, dy)
        #  create an array to collect moves 
    
        # get the pieces current row and current column
    
        # in a loop 
            # continually increment the pieces current row and current
            # column to generate the next position
            # stop looping if the next position is invalid (not on the board)
            # piece cant move in this direction
    
            # if the next pos is empty , the piece can move here
            # so add the next position to our moves array
    
            # if the next pos is occupied with a piece of the opposite
            # color, the piece can move here ( to capture the opposite color)
            # so we still add the next pos to the moves array
    
            # but, the piece cannot continue to move passed this piece, stop moving
            # if the nect pos is occupied with a piece of the same color, stop looping
    
            # return the final moves array
    end
    
end