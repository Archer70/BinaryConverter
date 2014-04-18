class Converter
  def initialize binary_number
    @binary = binary_number
    @bits = get_bits
    @total = 0
    self
  end

  def to_base_ten
    validate_binary
    @bits.reverse.each_with_index do |bit, power|
      append_to_total bit_value(bit, power)
    end
    get_total
  end

  private
  def get_bits
    @binary.to_s.split('').map do |number|
      number.to_i
    end
  end

  def validate_binary
    @bits.each do |bit|
      raise "Invalid Binary!" unless bit == 0 || bit == 1
    end
  end

  def bit_value bit, power
    is_set?(bit) ? two_to_power_of(power) : 0
  end

  def two_to_power_of power
    total = 1
    power.times do
      total = total * 2
    end
    total
  end

  def is_set? bit
    bit == 1
  end

  def append_to_total amount
    @total = @total + amount
  end

  def get_total
    @total
  end
end
