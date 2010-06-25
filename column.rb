require 'card'

class Column
  attr_accessor :title, :board, :cards

  def initialize(board, column_and_cards)
    self.board = board
    self.cards = []

    parsed_columns = column_and_cards.scan(/([^\[\]]+)/).flatten
    unless parsed_columns.empty?
      self.title = parsed_columns.shift
      parsed_columns.each do |card|
        self.cards << Card.new( self, card )
      end
    end
  end
end
