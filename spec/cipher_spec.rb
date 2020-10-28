require "cipher"

describe Cipher do
    cipher = Cipher.new
    describe ".caesar_cipher" do
        context "given the value caesar and a shift of 3" do
            it "returns fdhvdu" do
                expect(cipher.caesar_cipher("caesar", 3)).to eq("fdhvdu")
            end
        end

        context "given an empty string" do
            it "returns an empty string" do
                expect(cipher.caesar_cipher("", 3)).to eq("")
            end
        end
    end
end