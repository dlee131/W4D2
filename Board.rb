require "byebug"
require_relative "Piece.rb"
require_relative "Null_Piece.rb"

class Board
    attr_reader :grid
    def initialize
        @grid = Array.new(8) { Array.new(8, nil)}
        @null_piece = NullPiece.instance
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
            else
                @grid[i] = rows.map { |place| @null_piece } 
            end
        end
        @grid
    end

    def move_piece(start_pos, end_pos)
        row, col = end_pos
        # debugger
        if self[start_pos].is_a?(NullPiece)
            raise "Start position has no piece"
        elsif row < 0 || row > 7 || col < 0 || col > 7
            raise "End position invalid"
        end

        piece = self[start_pos]
        self[end_pos] = piece
        self[start_pos] = @null_piece
    end

    def print_board
        @grid.each do |row|
            row.each do |piece|
                print piece.symbol
            end
            puts
        end
        return nil
    end

end

