class Cipher
	def initialize
		@plain = ('a'..'z').to_a
		@crypted = ('a'..'z').to_a.reverse!
	end

	#status refers to encode or decode
	def crypt(input,status)
		puts "input: #{input}"
		output = ""	
		input.split(/\W+/).each{|word|
			charArray = word.split("")
			charArray.map!{|char|
				status == "encode" ? (char = encode(char)) : status == "decode" ? (char = decode(char)) :(puts "wrong status. use encode or decode")
			}
			output += charArray.join("") + " "
		}
		puts "output: #{output}"
	end	

	def encode(char)
		@plain.each_with_index.map{|letter,idx|
			return char = @crypted[idx] if (letter == char) 
		}
	end

	def decode(char)
		@crypted.each_with_index.map{|letter,idx|
			return char = @plain[idx] if (letter == char) 
		}
	end
end

cipher = Cipher.new
cipher.crypt("hello peter","encode")
cipher.crypt("svool kvgvi","decode")
