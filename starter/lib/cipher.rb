class Cipher
  def self.encode_or_decode(string)
    # declare ouput
    output = ""
    # loop through each letter
    string.each_char do |letter|
      # find difference from 97 ("a")
      diff = letter.ord - 97
      # subtract difference from 122 ("z")
      reverse = 122 - diff
      # convert back to letter
      # push to output string
      output += reverse.chr
    end
    return output
  end
end

puts Cipher.encode_or_decode("peter")
puts Cipher.encode_or_decode("kvgvi")

puts Cipher.encode_or_decode("hello")
puts Cipher.encode_or_decode("svool")