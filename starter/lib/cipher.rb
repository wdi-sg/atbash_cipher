class Cipher
  attr_accessor :plain, :cipher

  def initialize
    @plain = "abcdefghijklmnopqrstuvwxyz"
    @cipher = "zyxwvutsrqponmlkjihgfedcba"
  end

# hello -
  def encode(string)
    res = ""
    string.each_char { |ch|
      orgIdx = (ch.ord) - ('a'.ord)
      res += @cipher[25 - orgIdx]
    }
    puts res
  end

  def decode(string)
    res = ""
    string.each_char { |ch|
      orgIdx = (ch.ord) - ('a'.ord)
      res += @plain[orgIdx]
    }
    puts res
  end

end

cipher = Cipher.new
puts cipher.encode("hello")
puts cipher.decode("svool")
