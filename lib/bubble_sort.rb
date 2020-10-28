class Sorter
    
    def bubble_sort(arr)
        unless arr.is_a? Array
            raise ArgumentError.new("Expected an array")
        end
        len = arr.length
        0.upto(arr.length - 1) do 
            1.upto(arr.length - 1) do |index|
                first = arr[index - 1]
                second = arr[index]
                if first > second
                    swap(arr, index - 1, index)
                end
            end
        end

        return arr
    end

    def swap(arr, first_index, second_index)
        tmp = arr[first_index]
        arr[first_index] = arr[second_index]
        arr[second_index] = tmp
    end
end
