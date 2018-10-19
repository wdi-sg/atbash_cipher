ALPHABET = ('a'..'z').to_a

# A folding cipher where the mappings are done by "folding the alphabet."
class Cipher
  def self.encode(word)
    result = []
    word.downcase.each_char do |char|
      index = ALPHABET.length - 1 - ALPHABET.index(char)
      result << ALPHABET[index]
    end
    result.join
  end

  def self.decode(word)
    encode(word)
  end
end

puts Cipher.encode('hello')
puts Cipher.encode('peter')

puts Cipher.decode('svool')
puts Cipher.decode('kvgvi')
