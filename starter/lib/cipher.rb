require 'byebug'

class Cipher
	attr_accessor :plain, :output

	def initialize
		@plain = ('a'..'z').to_a
		@output = ('a'..'z').to_a.reverse!
	end

	#status refers to encode or decode
	def crypt(input,status)
		puts "input: #{input}"
		#split the input into array of words
		wordArray = input.split(/\W+/)

		i = 0
		while i<wordArray.length
			#loop through the letters of each word
			charArray = wordArray[i].split("")
			k = 0
			while k<charArray.length
				if status == "encode"
					charArray[k] = encode(charArray[k])
				elsif status == "decode"
					charArray[k] = decode(charArray[k])
				end
				k+= 1
			end
			wordArray[i] = charArray.join("")
			i+= 1
		end
		output = wordArray.join(' ')
		puts "output: #{output}"
	end	

	def encode(char)
		i = 0
		while i<@plain.length
			if(@plain[i] == char)
				return char = @output[i]
				# puts ("char change inside loop: #{char}")
				break
			end
			i+= 1
		end
	end

	def decode(char)
		i = 0
		while i<output.length
			if(@output[i] == char)
				return char = @plain[i]
				# puts ("char change inside loop: #{char}")
				break
			end
			i+= 1
		end
	end
end

cipher = Cipher.new
cipher.crypt("hello peter","encode")
cipher.crypt("svool kvgvi","decode")
