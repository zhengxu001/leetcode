# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_distance_pair(nums, k)
    min = 999999999
    nums.sort!
    n = nums.size - 1
    for i in 1..n
        dif = nums[i] - nums[i-1]
        min = dif if dif < min
    end
    max = nums[-1] - nums[0]
    while(min < max)
        mid = (max + min)/2
        res = 0
        i = j = n
        while(i >= 0)
            j -= 1 while(nums[j] - nums[i] > mid)
            res += j - i
            i -= 1
        end
        if res < k
            min = mid + 1
        else
            max = mid
        end
    end
    return min
end

# Method 2
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# def smallest_distance_pair(nums, k)
#     min = 999999999
#     nums.sort!
#     n = nums.size - 1
#     for i in 1..n
#         dif = nums[i] - nums[i-1]
#         min = dif if dif < min
#     end
#     max = nums[-1] - nums[0]
#     while(min < max)
#         mid = (max + min)/2
#         res = 0
#         j = n
#         for i in 0..n
#             j += 1 while(nums[i] - nums[j] > mid)
#             res += i - j
#         end
#         if res < k
#             min = mid + 1
#         else
#             max = mid
#         end
#     end
#     return min
# end


