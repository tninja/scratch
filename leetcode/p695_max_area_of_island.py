
class Solution(object):

    def maxAreaOfIsland(self, grid):
        """
        :type grid: List[List[int]]
        :rtype: int
        """
        height = len(grid)
        area_list = []
        if height > 0:
            width = len(grid[0])
            for x in range(width):
                for y in range(height):
                    if 1 == grid[y][x]:
                        area = self.areaOfIsland(grid, x, y, width, height)
                        area_list.append(area)
            if len(area_list) > 0:
                return max(area_list)
            else:
                return 0
        else:
            return 0

    def areaOfIsland(self, grid, x, y, width, height):
        if 0 == grid[y][x]:
            return 0
        else:
            q = []; head_ix = 0;
            q.append((x, y)); grid[y][x] = 0;
            area = 0
            while head_ix < len(q):
                area = area + 1; cx, cy = q[head_ix]; head_ix = head_ix + 1
                for dx, dy in [(1, 0), (-1, 0), (0, 1), (0, -1)]:
                    nx = cx + dx; ny = cy + dy;
                    if nx >= 0 and ny >= 0 and nx < width and ny < height:
                        if grid[ny][nx] == 1:
                            q.append((nx, ny)); grid[ny][nx] = 0;
            return area
