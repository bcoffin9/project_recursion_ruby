#sorting algorithm where Divide and Conquer is applied
#Aid taken from Edutechional Youtube Video "Ruby merge sort implementation"
#trouble with writing merge method

def merge_sort(arr)
    return arr if arr.length < 2
    length = arr.length
    middle = length / 2
    left_half = arr.slice(0, middle)
    right_half = arr.slice(middle, length - middle)
    left_half = merge_sort(left_half)
    right_half = merge_sort(right_half)

    arr = merge(left_half, right_half)
end

def merge(left, right)
    if left.empty?
        right
    elsif right.empty?
        left
    elsif left.first <= right.first
        [left.first] + merge(left[1..left.length], right)
    elsif right.first <= left.first
        [right.first] + merge(left, right[1..right.length])
    else
        raise "ERROR"
    end
end

#tests
puts merge_sort([1]).to_s
puts merge_sort([300, 19, 21, 4, 6, -1]).to_s
puts merge_sort([1, 1, 1, 1, 3, 0]).to_s
puts merge_sort([6, 2, 9, 3, 9]).to_s
