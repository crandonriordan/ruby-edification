require "bubble_sort"

describe Sorter do
    sorter = Sorter.new
    context "given an unordered array" do
        it "should return a new ordered array" do
            expect(sorter.bubble_sort([5,4,3,2,1])).to eq([1, 2, 3, 4, 5])
        end
    end

    context "given two elements" do
        it "should return an ordered array" do
            expect(sorter.bubble_sort([2, 1])).to eq([1, 2])
        end
    end

    context "given an empty array" do
        it "should return an empty array" do
            expect(sorter.bubble_sort([])).to eq([])
        end
    end

    context "given a non array" do
        it "should return an error" do
            expect{ sorter.bubble_sort("a string") }
                .to raise_error(ArgumentError, "Expected an array")
        end
    end
end