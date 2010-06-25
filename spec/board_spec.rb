require File.join(File.dirname(__FILE__), 'spec_helper')

describe "Kanban Board" do
  context 'on initialization' do
    it "a new and empty board should have no columns" do
      board = Board.new('this is the board name', '')
      board.columns.should be_empty
    end

    it "should set the board name" do
      board = Board.new('this is the board name', '')
      board.name.should == 'this is the board name'
    end

    it "should split the column query received into column objects" do
      board = Board.new('board name', '<col1[aaa]><col2[bbb]>')
      board.columns.size.should == 2
    end
  end
  it "should build a board with columns and cards" do
    board = Board.new('board name', '<col1[aaa]><col2[bbb]>')
    board.name.should == 'board name'

    col1 = board.columns.first
    col1.title.should == 'col1'
    col1.cards.first.title.should == 'aaa'

    col2 = board.columns.last
    col2.title.should == 'col2'
    col2.cards.first.title.should == 'bbb'
  end
end
