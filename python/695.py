class Solution(object):
    def maxAreaOfIsland(self, grid):
        max = 0
        m, n = len(grid), len(grid[0])

        def areaOfIsland(i, j):
            if 0 <= i < m and 0 <= j < n and grid[i][j]:
                grid[i][j] = 0
                return 1 + areaOfIsland(i+1, j) + areaOfIsland(i-1, j) + areaOfIsland(i, j+1) + areaOfIsland(i, j-1)
            return 0

        for i in range(m):
            for j in range(n):
                temp = areaOfIsland(i, j)
                if temp>max: max=temp
        return max