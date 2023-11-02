#Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

def bubble_sort(arr)
n= arr.length
swapped = true
while swapped
  swapped = false
  (n-1).times {|i|
    if arr[i] >  arr[i + 1]
    arr[i], arr[i + 1] = arr[i + 1], arr[i]
    swapped = true
    end
}
end
arr
end

puts bubble_sort([4,3,78,2,0,2])