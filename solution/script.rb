class Cipher
    @@forward = "abcdefghijklmnopqrstuvwxyz"
    @@reverse = "zyxwvutsrqponmlkjihgfedcba"

    def self.encode(word)
        word.gsub(/./) {|c| @@reverse[@@forward.index(c)]}
    end

    def self.decode(word)
        word.gsub(/./) {|c| @@forward[@@reverse.index(c)]}
    end
end

puts Cipher.encode("hello")
puts Cipher.encode("peter")