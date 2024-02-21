def caesar_cipher(word, shift)
    new_word = ""
  
    word.each_char do |char|
      if char =~ /[a-z]/
        index = char.ord - 'a'.ord
        new_char = ('a'.ord + (index + shift) % 26).chr
        new_word += new_char
      elsif char =~ /[A-Z]/
        index = char.ord - 'A'.ord
        new_char = ('A'.ord + (index + shift) % 26).chr
        new_word += new_char
      else
        # If the character is not a letter, leave it unchanged
        new_word += char
      end
    end
  
    return new_word
end

puts caesar_cipher("What a string!", 5)