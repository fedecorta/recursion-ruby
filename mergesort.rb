def merge_sort(array)
    return array if array.length <= 1 
    mid = array.length/2
    left_array = array[0...mid]
    right_array=array[mid..-1]
    
    sorted_left = merge_sort(left_array)
    sorted_right = merge_sort(right_array)

    merge(sorted_left,sorted_right)
end

def merge(left,right)
    sorted = []
    while !left.empty? && !right.empty?
        if left.first <= right.first
            sorted << left.shift
        else
            sorted << right.shift
        end
    end
    sorted + left + right
end