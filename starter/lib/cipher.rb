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
				if status == "encode"
					char = encode(char)
				elsif status == "decode"
					char = decode(char)
				end
			}
			output += charArray.join("") + " "
		}
		puts "output: #{output}"
	end	

	def encode(char)
		@plain.each_with_index.map{|letter,idx|
			if(letter == char)
				return char = @crypted[idx]
			end
		}
	end

	def decode(char)
		@crypted.each_with_index.map{|letter,idx|
			if(letter == char)
				return char = @plain[idx]
			end
		}
	end
end

cipher = Cipher.new
cipher.crypt("hello peter","encode")
cipher.crypt("svool kvgvi","decode")
