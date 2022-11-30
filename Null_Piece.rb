require_relative "Piece.rb"
require "singleton"
class NullPiece < Piece
    attr_reader :symbol
    include Singleton
    def initialize
        @symbol = :n
    end
end