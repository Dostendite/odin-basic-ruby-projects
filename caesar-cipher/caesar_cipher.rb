# caesar cipher translator
class CaesarCipher
  def translate(string, shift, result = "")
    alphabet = ("a".."z").to_a
    string.chars.each do |char|
      if char =~ /[\W\d]/
        result << char
      elsif char == char.upcase # find capital
        alphabet_index = alphabet.find_index(char.downcase)
        result << alphabet[(alphabet_index + shift) % 26].upcase
      else
        alphabet_index = alphabet.find_index(char)
        result << alphabet[(alphabet_index + shift) % 26]
      end
    end
    result
  end
end
