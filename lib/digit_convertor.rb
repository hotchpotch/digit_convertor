require "digit_convertor"

class DigitConvertor
  DEFAULT_CHARS = [('0'..'9'), ('a'..'z'), ('A'..'Z')].map { |r| r.to_a }.flatten.freeze

  attr_reader :n

  def initialize(chars = DEFAULT_CHARS)
    @n = chars.size
    @chars = chars
    @chars_hash = Hash[*(@chars).zip((0..@n).to_a).flatten]
  end

  def to(i)
    digit = []
    begin
      i, c = i.divmod @n
      digit << @chars[c]
    end while i > 0

    return digit.reverse.join ''
  end

  def from(str)
    i = str.split('').size - 1
    r = 0
    str.split('').each_with_index do |c, n|
      r += @n ** (i-n) * @chars_hash[c]
    end
    r
  end
end

