require "byebug"
require_relative "Piece.rb"

class Board
    attr_reader :grid
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
                
                @grid[i] = rows.map { |place| Piece.new } 
            end
        end
        @grid
    end

    def move_piece(start_pos, end_pos)
        row, col = end_pos
        if self[start_pos] == nil
            raise "Start position has no piece"
        elsif row < 0 || row > 7 || col < 0 || col > 7
            raise "End position invalid"
        end

        
    end


end

