require "pry"

class StockPicker
    FIXNUM_MAX = (2**(0.size * 8 -2) -1)
    FIXNUM_MIN = -(2**(0.size * 8 -2))
    def stock_picker(stocks)
        runningMax = FIXNUM_MIN
        runningMin = FIXNUM_MAX
        runningMaxIndex = 0
        runningMinIndex = 0
        runningBest = 0;
        pair = [runningMinIndex, runningMaxIndex]
        stocks.each_with_index do |stock, index|
            if (stock < runningMin) 
                runningMin = stock
                runningMinIndex = index
            elsif (stock > runningMax) 
                runningMax = stock
                runningMaxIndex = index
            end
            
            if runningMax - runningMin > runningBest
                pair = [runningMinIndex, runningMaxIndex]
                runningBest = runningMax - runningMin
            end
        end

        return pair
    end
end

StockPicker.new.stock_picker([3, 4, 2, 1, 8, 9, 12, 5, 7])