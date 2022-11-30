class Piece
    attr_reader :color, :board, :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos 
    end

    def to_s
        
    end

    def empty?
        @pos == NullPiece
    end

    def valid_moves

    end
    
    def pos=(val)
        row, col = pos
        @grid[row][col] = val
    end

    def symbol
        
    end
end


