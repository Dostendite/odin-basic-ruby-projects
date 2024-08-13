require_relative "../caesar_cipher"

RSpec.describe CaesarCipher do
  subject(:caesar_cipher) { described_class.new }
  describe "#translate" do
    context "returns the correct decrypted word" do
      it "with a shift of 5" do
        expect(caesar_cipher.translate("Ebiil, tloia!", 3)).to eq("Hello, world!")
      end

      it "with a shift of 10" do
        expect(caesar_cipher.translate("Sqforqhq", 10)).to eq("Capybara")
      end

      it "with a shift of 33 (+7)" do
        expect(caesar_cipher.translate("Knur zxfl", 7)).to eq("Ruby gems")
      end
    end

    context "returns the correct encrypted word" do
      it "with a shift of 14" do
        expect(caesar_cipher.translate("Hannah Montana", 14)).to eq("Vobbov Acbhobo")
      end

      it "with a shift of 15" do
        expect(caesar_cipher.translate("Chocolate", 15)).to eq("Rwdrdapit")
      end

      it "with a shift of 57 (+5)" do
        expect(caesar_cipher.translate("Mossfruit", 57)).to eq("Rtxxkwzny")
      end
    end
  end
end
