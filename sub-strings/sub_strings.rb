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

def substrings(string, dictionary)
  match_hash = {}

  match_array = dictionary.select do |word|
    (word.chars - string.chars).empty?
  end
  
  match_array.each do |match|
    if match_hash[match]
      match_hash[match] += 1
    else
      match_hash[match] = 1
    end
  end

  match_hash
end

match_hash = substrings(input_string, dictionary)

p "matches = #{match_hash}"