module Stepable

    def moves
        # create an array to collect moves

        # iterate through each of the pieces possible 
        # move difs

        # for each move_dif, increment the pieces position
        # to generate a new position

        # add the new pos to the moves array if :

            # on the board and empty
            # or on the board and contains a piece of the opposite 
            # color

            # return thr final array of moves
    end

    private

    def move_difs
        # subclass implemented this
        raise NotImplementedError 
        # this only executes if we have forgotten to implement it in our subclass
    end
    
end