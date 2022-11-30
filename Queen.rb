require_relative "Piece.rb"
require_relative "Slideable.rb"

class Queen < Piece
    include Slideable
    def symbol
        "♛".colorize(color)
    end

    protected

    def move_dirs

    end
end