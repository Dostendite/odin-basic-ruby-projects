require 'pry-byebug'

print "Enter string: "
string = gets.chomp
print "Enter shift factor: "
shift_factor = gets.chomp.to_i

def caesar_cipher(string, shift_factor)
  alphabet = 'a'..'z'
  alphabet = alphabet.to_a
    
  # for each letter in the string,
  # shift the letter up or down by the
  # shift_factor
  new_string = []

  string.chars.each do |char|
    if char =~ /[ !?.,]/
      new_string << char
    else
      alphabet_index = alphabet.find_index(char)
      new_string << alphabet[(alphabet_index + shift_factor) % 26]
  end
  new_string.join("")
end

puts caesar_cipher(string, shift_factor)

