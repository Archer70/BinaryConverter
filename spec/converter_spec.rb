require_relative "../src/converter"

describe Converter do
  it "fails if given invalid binary." do
    expect {Converter.new(1234).to_base_ten}.to raise_exception
  end

  it "returns 0 when given 0" do
    Converter.new(0).to_base_ten.should == 0
  end

  it "returns 1 when given 1" do
    Converter.new(1).to_base_ten.should == 1
  end

  it "converts 10 to 2" do
    Converter.new(10).to_base_ten.should == 2
  end

  it "converts 11 to 3" do
    Converter.new(11).to_base_ten.should == 3
  end

  it "converts 100 to 4" do
    Converter.new(100).to_base_ten.should == 4
  end

  it "converts 101 to 5" do
    Converter.new(101).to_base_ten.should == 5
  end

  it "converts 1000 to 8" do
    Converter.new(1000).to_base_ten.should == 8
  end

  it "converts 100000000 to 256" do
    Converter.new(100000000).to_base_ten.should == 256
  end

  it "converts 10110010 to 2+16+32+128" do
    Converter.new(10110010).to_base_ten.should == 2+16+32+128
  end
end
