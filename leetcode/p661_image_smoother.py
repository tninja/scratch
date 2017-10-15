
import copy

class Solution(object):

    def imageSmoother(self, M):
        smoothed = copy.deepcopy(M)
        
        height = len(M)
        if height > 0:
            for y in range(height):
                for x in range(len(M[y])):
                    smoothed_xy = self.imageSmootherXY(M, x, y)
                    smoothed[y][x] = smoothed_xy
        return smoothed

    def imageSmootherXY(self, M, x, y):
        surrounding_cells = self.getSurroundingCells(M, x, y)
        values = [M[ny][nx] for nx, ny in surrounding_cells]
        result = sum(values) / len(values)
        return result
            
    def getSurroundingCells(self, M, x, y):
        height = len(M)
        if 0 == height:
            return []
        else:
            surrounding_cells = []
            width = len(M[0])
            delta = [-1, 0, 1]
            for i in delta:
                for j in delta:
                    nx = x + j; ny = y + i
                    if nx >= 0 and nx < width and ny >= 0 and ny < height:
                        surrounding_cells.append([nx, ny])
            return surrounding_cells
