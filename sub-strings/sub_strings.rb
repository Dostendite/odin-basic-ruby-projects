require 'binding.pry'
# Implement a method #substrings that takes a 
# word as the first argument and then an array of 
# valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) 
# that was found in the original string and  how many times it was found.

print "Enter input string: "
input_string = gets.chomp

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)

  word_hash = Hash.new

  split_string = string.split

  dictionary.each do |word|
    test = word.split - split_string
    if test.empty?
      if word_hash[word]
        word_hash[word] += 1
      else
        word_hash[word] = 1
      end
    end
  end

  word_hash

end

substrings(input_string, dictionary)
