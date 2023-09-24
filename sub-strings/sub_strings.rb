print "Enter input string: "
input_string = gets.chomp

dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  match_hash = {}

  dictionary.each do |word|
    match_count = string.downcase.scan(/#{word.downcase}/i).size

    if match_count > 0
      match_hash[word] = match_count
    end
  end
  
  match_hash
end

match_hash = substrings(input_string, dictionary)

puts "matches = #{match_hash}"