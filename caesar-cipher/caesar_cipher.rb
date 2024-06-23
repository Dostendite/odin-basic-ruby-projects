print 'Enter string: '
string = gets.chomp
print 'Enter shift factor: '
shift_factor = gets.chomp.to_i

def caesar_cipher(string, shift_factor)
  alphabet = 'a'..'z'
  alphabet = alphabet.to_a
  new_string = []

  string.chars.each do |char|
    if char =~ /[\W\d]/
      new_string << char
    elsif char == char.upcase # find capital
      alphabet_index = alphabet.find_index(char.downcase)
      new_string << alphabet[(alphabet_index + shift_factor) % 26].upcase
    else
      alphabet_index = alphabet.find_index(char)
      new_string << alphabet[(alphabet_index + shift_factor) % 26]
    end
  end
  new_string.join('')
end

puts caesar_cipher(string, shift_factor)
