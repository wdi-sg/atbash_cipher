plain = "abcdefghijklmnopqrstuvwxyz"
cipher = "zyxwvutsrqponmlkjihgfedcba"

alphabet = plain.split("")

# code = cipher.split("") 
code = alphabet.reverse
# alphabet.reverse

class Cipher

	def encode(alphabet, code, string)
		split_string = string.split("")
		translated= []
		split_string.each do |letter|
			output = alphabet.find_index(letter)
			translated << code[output]
		end
		translated.join
	end

	def decode(alphabet, code, string)
		split_string = string.split("")
		translated= []
		split_string.each do |letter|
			output = code.find_index(letter)
			translated << alphabet[output]
		end
		translated.join
	end

end

puts "What is the input?"

string=gets.downcase.chomp

encoded = Cipher.new.encode(alphabet, code, string)

puts "encoded:" + encoded

decoded = Cipher.new.decode(alphabet, code, encoded)

puts "decoded:" + decoded
