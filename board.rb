require 'column'

class Board
  attr_accessor :name, :columns

  def initialize(name, columns_and_cards)
    self.name = name
    self.columns = []

    split_columns = columns_and_cards.scan(/<([^>]+)>/).flatten
    unless split_columns.empty?
      split_columns.each do |column|
        self.columns << Column.new( self, column )
      end
    end
  end
end
