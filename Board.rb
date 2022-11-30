require "byebug"
class Board
    
    def initialize
        @grid = Array.new(8) { Array.new(8, nil)}
        
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def populate
        @grid.each_with_index do |rows, i|
            if i == 0 || i == 1 || i == 6 || i == 7
                
                @grid[i] = rows.map { |place| "piece" } 
            end
        end
        @grid
    end

    def move_piece(start_pos, end_pos)
        
    end


end

