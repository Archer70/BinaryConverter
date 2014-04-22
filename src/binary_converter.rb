class BinaryConverter
  def self.to_base_ten binary_number
    self.new(binary_number).to_base_ten
  end

  def initialize binary_number
    @binary = binary_number
    @bits = get_bits
    @total = 0
    validate_binary
  end

  def to_base_ten
    @bits.reverse.each_with_index do |bit, power|
      append_to_total bit_value(bit, power)
    end
    get_total
  end

  private
  def get_bits
    @binary.to_s.chars.map do |bit|
      bit.to_i
    end
  end

  def validate_binary
      raise ArgumentError.new("Invalid binary!") unless @binary.to_s =~ /^[01]*$/
  end

  def bit_value bit, power
    bit_set?(bit) ? two_to_power_of(power) : 0
  end

  def two_to_power_of power
    2 ** power
  end

  def bit_set? bit
    bit == 1
  end

  def append_to_total amount
    @total += amount
  end

  def get_total
    @total
  end
end
