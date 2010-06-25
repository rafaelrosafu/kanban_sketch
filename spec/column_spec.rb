require File.join(File.dirname(__FILE__), 'spec_helper')

describe "Kanban Column" do
  context 'on initialization' do
    it "a new column should be associated to a board" do
      board = mock(:board)
      column = Column.new(board, '')
      column.board.should == board
    end

    it "should set the column name to the first part of the received column string" do
      board = mock(:board)
      column = Column.new(board, 'column name[card_a][card_b]')
      column.title.should == 'column name'
    end

    it "should split the cards received" do
      board = mock(:board)
      column = Column.new(board, 'column name[card_a][card_b]')
      column.cards.size.should == 2
    end
  end
end
