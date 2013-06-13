require 'spec_helper'

describe LittleTable do

  context 'with a simple table' do

    before :each do
      @table = <<-EOF
      | column1 | column2 |
      | cell1   | cell2    |
      EOF
    end

    it 'should have a length of 1' do
      LittleTable.new(@table).length.should == 1
    end

    it 'should have headers' do
      LittleTable.new(@table).headers.should == %w{column1 column2}
    end

    it 'should have cells' do
      LittleTable.new(@table).rows.should == [['cell1', 'cell2']]
    end

    it 'should have hashes' do
      LittleTable.new(@table).hashes.should == [{column1: 'cell1', column2: 'cell2'}]
    end

  end

  context 'with a little bit more complex table' do
    before :each do
      @table = <<-EOF
      | column1 | column2  |
      | cell1x1  | cell1x2 |
      | cell2x1  | cell2x2 |
      EOF
    end

    it 'should have a length of 1' do
      LittleTable.new(@table).length.should == 2
    end

    it 'should have headers' do
      LittleTable.new(@table).headers.should == %w{column1 column2}
    end

    it 'should have cells' do
      LittleTable.new(@table).rows.should == [['cell1x1', 'cell1x2'], ['cell2x1', 'cell2x2']]
    end

    it 'should have hashes' do
      LittleTable.new(@table).hashes.should == [{column1: 'cell1x1', column2: 'cell1x2'}, {column1: 'cell2x1', column2: 'cell2x2'}]
    end

  end

  context 'table with complex header' do
    before :each do
      @table = <<-EOF
      | column 1 | Colümn 2  |
      | cell1    | cell2     |
      EOF
    end

    it 'should have headers' do
      LittleTable.new(@table).headers.should == ['column 1', 'Colümn 2']
    end

    it 'should have hashes' do
      LittleTable.new(@table).hashes.should == [{column_1: 'cell1', column_2: 'cell2'}]
    end

  end

end