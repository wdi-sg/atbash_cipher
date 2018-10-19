# A folding cipher where the mappings are done by "folding the alphabet."
class Cipher
  def self.encode(word)
    result = word.downcase.split('').map do |char|
      ('a'.ord + 'z'.ord - char.ord).chr
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
