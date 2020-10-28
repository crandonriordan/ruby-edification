require "stock_picker"

describe StockPicker do
    stock_picker = StockPicker.new
    easy_stocks = [1, 2, 3, 4, 5]
    reverse_ordered_stocks = [5, 4, 3, 2, 1]
    normal_stocks = [3, 4, 2, 1, 8, 9, 12, 5, 7] # should return [3, 6], -> 11.
    describe ".stock_picker" do
        context "given a simple ordered array 1..5" do
            it "will return [0,4]" do
                expect(stock_picker.stock_picker(easy_stocks)).to eq([0, 4])
            end
        end
        context "given an array ordered in reverse 5..1" do
            it "will return [0,0]" do
                expect(stock_picker.stock_picker(reverse_ordered_stocks)).to eq([0, 0])
            end
        end
        context "given a complex array with no ordering" do
            it "will return [3, 5]" do
                expect(stock_picker.stock_picker(normal_stocks)).to eq([3, 6])
            end
        end
    end
end