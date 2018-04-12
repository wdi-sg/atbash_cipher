require 'byebug'
require 'pp'


class Cipher
	def encode(word)
		chars = word.downcase.split(//)
		range = ('a'..'z').to_a
		plain = range
		cipher = range.reverse
		mid_encode = []
		encoded = []
		chars.select do |char|
			plain.select do |letter|
				if char == letter
					mid_encode << plain.index(letter)
				end
			end
		end
		mid_encode.select do |num|
			encoded << cipher[num]
		end
		puts encoded.join
	end

	def decode(word)
		chars = word.downcase.split(//)
		range = ('a'..'z').to_a
		encoded = range
		decode = range.reverse
		mid_decode = []
		decoded = []
		chars.select do |char|
			encoded.select do |letter|
				if char == letter
					mid_decode << encoded.index(letter)
				end
			end
		end
		mid_decode.select do |num|
			decoded << decode[num]
		end
		puts decoded.join
	end
end

Cipher = Cipher.new

byebug

puts "wow"