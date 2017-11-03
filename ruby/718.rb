# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer}
def find_length(a, b)
    m = a.size
    n = b.size
    dp = m.times.map{ [0] * n }
    for i in 0..m-1
        for j in 0..n-1
            if a[i] == b[j]
                if i ==0 || j==0
                    dp[i][j] = 1
                else
                    dp[i][j] = dp[i-1][j-1] + 1
                end
            else
                dp[i][j] = 0
            end
        end
    end
    # p dp
    return dp.flatten.max
end
# a = [0,0,0,0,1]
# b = [1,0,0,0,0]

# p find_length(a, b)