# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]} two integers in an array, ie: [index1, index2]
def two_sum(numbers, target)
    arr = Array.new(numbers)
    numbers.sort!
    result = []
    n = numbers.length-1
    i = 0
    j = n
    while(j>i)
        if numbers[i]+numbers[j] > target
            j-=1
        elsif numbers[i]+numbers[j] < target
            i+=1
        else numbers[i]+numbers[j] == target
            result[0] = arr.index(numbers[i]) + 1
            arr[result[0]-1] = target + 1
            result[1] = arr.index(numbers[j]) + 1
            result.sort!
            return result
        end
    end
end