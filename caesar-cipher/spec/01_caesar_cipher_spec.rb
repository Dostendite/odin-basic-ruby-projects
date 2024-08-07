require_relative '../caesar_cipher'

RSpec.describe 'caesar cipher method' do
  context 'returns the correct decrypted word' do
    it 'with a shift of 5' do
      encrypted_word = 'Ebiil, tloia!'
      decrypted_word = caesar_cipher(encrypted_word, 3)
      expect(decrypted_word).to eq('Hello, world!')
    end

    it 'with a shift of 10' do
      encrypted_word = 'Sqforqhq'
      decrypted_word = caesar_cipher(encrypted_word, 10)
      expect(decrypted_word).to eq('Capybara')
    end

    it 'with a shift of 33 (+7)' do
      encrypted_word = 'Knur zxfl'
      decrypted_word = caesar_cipher(encrypted_word, 7)
      expect(decrypted_word).to eq('Ruby gems')
    end
  end

  context 'returns the correct encrypted word' do
    it 'with a shift of 15' do
      word = 'Chocolate ice cream'
      encrypted_word = caesar_cipher(word, 15)
      expect(encrypted_word).to eq('Rwdrdapit xrt rgtpb')
    end

    it 'with a shift of 57 (+5)' do
      word = 'Mossfruit'
      encrypted_word = caesar_cipher(word, 57)
      expect(encrypted_word).to eq('Rtxxkwzny')
    end

    it 'with a shift of 14' do
      word = 'Hannah Montana'
      encrypted_word = caesar_cipher(word, 14)
      expect(encrypted_word).to eq('Vobbov Acbhobo')
    end
  end
end
