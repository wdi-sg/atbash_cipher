require 'byebug'

class Cipher
    def initialize
        normal_word = []
        for i in "a".."z"
            normal_word.push(i)
        end
        hidden_word = normal_word.reverse

        print "Enter your code word: "
        to_code = gets.chomp

        input_array = to_code.split("")

        i = 0
        index_array = []
        while i < input_array.length
            index_array << normal_word.find_index(input_array[i])
            i += 1
        end

        x = 0
        while x < index_array.length
            print hidden_word[index_array[x]]
            x += 1
        end

    end 
end

coding = true

while coding == true
    Cipher.new
    coding = false
    exit
end

byebug

puts "hello"




