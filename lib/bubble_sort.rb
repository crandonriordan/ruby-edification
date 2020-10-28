class Sorter
    
    def bubble_sort(arr)
        len = arr.length
        0.upto(arr.length - 1) do 
            1.upto(arr.length - 1) do |index|
                puts "index #{index}"
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
