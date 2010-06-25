class Card
  attr_accessor :column, :title, :description
  
  def initialize(column, card_query)
    self.column = column
    self.title = card_query    
  end
end
