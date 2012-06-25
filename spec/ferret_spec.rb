require 'spec_helper'

describe Ferrety::Ferret do
  it "can accept JSON parameters on initialize" do
    Ferrety::StockFerret.new('{"symbol":".dji"}').symbol.should == '.dji'
  end

  it "can accept Hash parameters on initialize" do
    Ferrety::StockFerret.new("symbol" => '.dji').symbol.should == '.dji'
  end
end