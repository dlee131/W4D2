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

    # def populate
    #     @grid.each do |row|
    #         row.map do |pos|
    #             row[pos] = 'piece'

    #         end
    #     end
    # end

    def populate
        @grid.each_with_index do |rows, i|
            
            rows.each { |place| place = "piece" }
        end
        @grid
    end

    def move_piece(start_pos, end_pos)
        
    end


end

