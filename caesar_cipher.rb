#To do:  
#letters in string must shift down the aplhabet depending on what the key is
#it has to loop past go from z to a after passing z
#casing and space must be the same 
def caesar_cipher(text, key)
    #Create aplhabet arrays
    result_text = ""
    uppercase_alphabet = Array.new(26){|l| (l + 65).chr}
    lowecase_alphabet = uppercase_alphabet.map {|l| l.downcase}
    #loop text 
    text.each_char { |letter| 
    #check letters
    if uppercase_alphabet.include?(letter)
    index = (uppercase_alphabet.index(letter) + key) % 26 #make sure to loop around array
    result_text += uppercase_alphabet[index]

    elsif lowecase_alphabet.include?(letter)
        index = (lowecase_alphabet.index(letter) + key) % 26
        result_text += lowecase_alphabet[index]
    else
        result_text += letter
    end
}
result_text

end               
 puts caesar_cipher("HELLO",27)
