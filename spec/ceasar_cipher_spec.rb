require './lib/ceasar_cipher' 


describe Ceasar_cipher do
    describe "initialize" do
        it "does the cipher 1 shift" do
        cipher = Ceasar_cipher.new("aaaa",1)
        expect(cipher.to_s).to eql("bbbb")
        end
    end
    describe "negative shift" do
        it "does the cipher -1 shift" do
        cipher = Ceasar_cipher.new("aaaa",-1)
        expect(cipher.to_s).to eql("zzzz")
        end
    end
    describe "out of bound pos shift" do
        it "shift 500" do
        cipher = Ceasar_cipher.new("aaaa",500)
        expect(cipher.to_s).to eql("Invalid Shift must be between -26 & 26")
        end
    end


    

end