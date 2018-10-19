require 'rubocop'
# Cipher class of methods to encode/decode
class Cipher
  ALPHABET = ('a'..'z').to_a
  CIPHER = ALPHABET.reverse
  def encode(message)
    message = message.downcase
    array = message.split(//)
    new_message = ''
    array.each do |letter|
      index_of = ALPHABET.index letter
      new_message += CIPHER[index_of]
    end
    new_message
  end

  def decode(message)
    message = message.downcase
    array = message.split(//)
    new_message = ''
    array.each do |letter|
      index_of = CIPHER.index letter
      new_message += ALPHABET[index_of]
    end
    new_message
  end
end

puts Cipher.new.encode('hello')
