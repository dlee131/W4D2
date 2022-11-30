class Board
    def initialize
        @grid = Array.new(8) { Array.new(8,'_')}
        
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(val)
        row, col = pos
        @grid[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        
    end


end

class Piece
    def initialize
        
    end
end