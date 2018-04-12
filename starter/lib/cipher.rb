
# Plain = "abcdefghijklmnopqrstuvwxyz".split("")
# Cipherword = "zyxwvutsrqponmlkjihgfedcba".split("")



class Cipher
	Plain = "abcdefghijklmnopqrstuvwxyz".split("")
	Cipherword = "zyxwvutsrqponmlkjihgfedcba".split("")
	
	def initialise (codeword)
		@codeword = codeword
		puts @codeword
  	end
	
  	def decode (codeword)
		$newWord = []
  		codeword_array = codeword.split("")
  			codeword_array.each do |item|
	  		# decoded_word = plain[item.index]
	  		# decoded_word.to_s
	  		num = Cipherword.index(item)
	  		result = Plain[num]
	  		
	  		$newWord.push(result)
	  		
  			end
  			$newWord = $newWord.join()
			puts "This is the result for 1: #{$newWord}"
  		end


  	def encode (codeword)
		$newWord2 = []
		codeword_array = codeword.split("")
  			codeword_array.each do |item|
  				num = Plain.index(item)
  				result = Cipherword[num]
  				$newWord2.push(result)
  			end
  			$newWord2 = $newWord2.join()
			print "This is the result for 2 #{$newWord2}"
  		end

end

svool = Cipher.new
svool.decode("svool")
hello = Cipher.new
hello.encode("hello")
