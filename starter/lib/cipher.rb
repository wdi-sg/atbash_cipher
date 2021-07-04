



class Cipher
    BIG =("a".."z").to_a
    def encode(word)
        reversedword = word.downcase.split('')
        answer_array = reversedword.map do |letter|
        BIG.reverse[BIG.index(letter)]
        end
        answer_array.join
    end
end

    cipher = Cipher.new
    answer = cipher.encode("hello")
    puts answer

#BIG must be all capital letters to be declared as constant


