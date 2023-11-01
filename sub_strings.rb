#TO Do:
#Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substrings(text, dictionary)
    
    lowcase_texts =  text.downcase.split(' ')
    found_hash = Hash.new(0)
    
    lowcase_texts.each { |word|
    dictionary.each { |substring|
    if word.include?(substring)
        found_hash[substring] += 1
    end
} 
}
 found_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner  ","sit"]

puts substrings("below", dictionary)

