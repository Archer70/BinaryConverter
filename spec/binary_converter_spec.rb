require_relative "../src/binary_converter"

describe BinaryConverter do
  it "fails if given invalid binary." do
    expect {BinaryConverter.new(1234).to_base_ten}.to raise_exception
  end

  it "returns 0 when given 0" do
    expect(BinaryConverter.new(0).to_base_ten).to eq 0
  end

  it "returns 1 when given 1" do
    expect(BinaryConverter.new(1).to_base_ten).to eq 1
  end

  it "converts 10 to 2" do
    expect(BinaryConverter.new(10).to_base_ten).to eq 2
  end

  it "converts 11 to 3" do
    expect(BinaryConverter.new(11).to_base_ten).to eq 3
  end

  it "converts 100 to 4" do
    expect(BinaryConverter.new(100).to_base_ten).to eq 4
  end

  it "converts 101 to 5" do
    expect(BinaryConverter.new(101).to_base_ten).to eq 5
  end

  it "converts 1000 to 8" do
    expect(BinaryConverter.new(1000).to_base_ten).to eq 8
  end

  it "converts 100000000 to 256" do
    expect(BinaryConverter.new(100000000).to_base_ten).to eq 256
  end

  it "converts 10110010 to 2+16+32+128" do
    expect(BinaryConverter.new(10110010).to_base_ten).to eq 2+16+32+128
  end

  it "converts binary to decimal via static helper method." do
    expect(BinaryConverter.to_base_ten(100)).to eq 4
  end
end
