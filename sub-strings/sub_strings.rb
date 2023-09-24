require 'pry-byebug'
# Implement a method #substrings that takes a 
# word as the first argument and then an array of 
# valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) 
# that was found in the original string and  how many times it was found.

print "Enter input string: "
input_string = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]

# subtract the word from the string
# as many times as possible and
# if the result of the word subtracted from
# the string is equal to the string,
# then the string was in the word
# for as many times as the subtraction took place

def substrings(string, dictionary)
  match_hash = {}

  dictionary.each do |word|
    test = word.downcase.chars - string.downcase.chars
    if test.empty?
      if match_hash[word]
        match_hash[word] += 1
      else
        match_hash[word] = 1
      end
    end
  end
  
  match_hash
end

match_hash = substrings(input_string, dictionary)

p "matches = #{match_hash}"