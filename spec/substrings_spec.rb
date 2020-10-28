require "substring"

describe Substring do
    substr = Substring.new
    dictionary = ["below","down","go",
        "going","horn","how",
        "howdy","it","i","low",
        "own","part","partner","sit"]
    
    complex_sentence = "Howdy partner, sit down! How's it going?"
    describe ".substring" do
        it "correctly counts the occurences" do
            expect(substr.substring("below", dictionary))
                .to eq({ "below" => 1, "low" => 1 })
        end
        
        it "correctly counts the occurences for a complex sentence" do
            expect(substr
                .substring(complex_sentence, dictionary))
                .to eq({ "down" => 1, "go" => 1, "going" => 1, 
                    "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, 
                    "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
        end
    end
end