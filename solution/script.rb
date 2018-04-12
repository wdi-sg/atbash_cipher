$forward = "abcdefghijklmnopqrstuvwxyz"
$reverse = "zyxwvutsrqponmlkjihgfedcba"

def encode(word)
    word.gsub(/./) {|c| $reverse[$forward.index(c)]}
end

def decode(word)
    word.gsub(/./) {|c| $forward[$reverse.index(c)]}
end

puts encode("hello world")