class Cipher
  attr_reader :encode

  def initialize
    @alphabet = ('a'..'z').to_a
    @cipher = ('z'..'a').to_a
  end

  def code(string)
    encoded_array = []
    string.split("").each do |alphabet|
# Using the ASCII Characters to reverse the characters
      encoded_array << ((97+25) - (alphabet.ord - 97)).chr
    end
    encoded_array.join("")
  end
end

  new_cipher = Cipher.new

  puts new_cipher.code("hello")
  puts new_cipher.code("svool")
