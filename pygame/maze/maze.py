
import sys
from random import shuffle


class Maze(object):
    def __init__(self, rows, cols):
        matrix = []
        for y in range(rows):
            row = [1] * cols
            matrix.append(row)
        self.maze = matrix
        grids = rows * cols
        sys.setrecursionlimit(max(grids, 1000))

    @staticmethod
    def clone(maze):
        rows, cols = maze.getDim()
        cloned = Maze(rows, cols)
        for r in range(rows):
            for c in range(cols):
                cloned.maze[r][c] = maze.maze[r][c]

    def dig(self, pct=0.4):
        rows, cols = self.getDim(self.maze)
        start_y = rows // 2
        start_x = cols // 2
        blocks = round(rows * cols * pct)
        self.dig0(self.maze, start_x, start_y, blocks, [])

    def dig0(self, maze, x, y, blocks, visited=[]):
        if blocks == len(visited):
            return
        else:
            visited.append((x, y))
            maze[y][x] = 0
            next_candidates = []
            rows, cols = self.getDim(maze)
            for dx in [-1, 0, +1]:
                for dy in [-1, 0, +1]:
                    if abs(dx + dy) == 1:
                        nx = x + dx
                        ny = y + dy
                        if nx >= 0 and nx < cols and ny >= 0 and ny < rows:
                            if maze[ny][nx] == 1: # can dig
                                next_candidates.append((nx, ny))
            if len(next_candidates) > 0:
                shuffle(next_candidates)
                for nx, ny in next_candidates:
                    self.dig0(maze, nx, ny, blocks, visited)
 
    def getDim(self, maze):
        rows, cols = len(maze), len(maze[0])
        return rows, cols

    def __str__(self):
        rows, cols = self.getDim(self.maze)
        strList = []
        for y in range(rows):
            rowChars = []
            for x in range(cols):
                p = self.maze[y][x]
                if p == 1:
                    ch = '+'
                elif p == 0:
                    ch = ' '
                else:
                    ch = str(p)
                rowChars.append(ch)
            strRow = ''.join(rowChars)
            strList.append(strRow)
        resultStr = '\n'.join(strList)
        return resultStr
