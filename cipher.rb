class Cipher
      def encode (string)
            encoded_array = []
            string.split("").each do |alphabet|
                  encoded_array << ((97 + 25) - (alphabet.ord - 97)).chr
            end
            encoded_array.join("")            
      end

      def decode (string)
            decoded_array = []
            string.split("").each do |alphabet|
                  decoded_array << ((97 + 25) - (alphabet.ord - 97)).chr
            end
            decoded_array.join("")
      end
end



cipher1 = Cipher.new
puts cipher1.decode("svool")



