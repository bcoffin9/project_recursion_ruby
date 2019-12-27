#first challenge, print n fibs using iteration
def iter_fibs(n)
    arr = []
    exit if n < 1
    arr << 0 if n > 0
    arr << 1 if n > 1
    (n-2).times do |num|
        arr << (arr[num]) + (arr[num+1])
    end

    puts arr.join(", ")
end

#iter_fibs(1)
#iter_fibs(2)
#iter_fibs(3)
#iter_fibs(6)
#iter_fibs(9)

#second challenge, print n fibs using recursion
def recur_fibs(n)
    raise "Unacceptable input" if n < 1
    return [0] if n == 1
    return [0, 1] if n == 2
    arr = recur_fibs(n-1)
    if n > 2
        arr << arr[n-3] + arr[n-2]
    end
    return arr
end

puts recur_fibs(1).join(", ")
puts recur_fibs(2).join(", ")
puts recur_fibs(10).join(", ")