require File.join(File.dirname(__FILE__), 'spec_helper')

describe "Kanban Card" do
  context 'on initialization' do
    it "a new column should be associated to a column" do
      column = mock(:column)
      card = Card.new(column, 'xxx')
      card.column.should == column
    end

    it "should set the card title" do
      column = mock(:column)
      card = Card.new(column, 'xxx')
      card.title.should == 'xxx'
    end
  end
end
