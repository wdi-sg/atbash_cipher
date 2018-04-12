class Cipher
    @@😁 = "abcdefghijklmnopqrstuvwxyz"
    @@😵 = "zyxwvutsrqponmlkjihgfedcba"

    def self.encode(word)
        word.gsub(/./) {|c| @@😵[@@😁.index(c)]}
    end

    def self.decode(word)
        self.encode(word) # the map is a self-inverting one...
    end
end

puts Cipher.encode("hello")
puts Cipher.encode("peter")