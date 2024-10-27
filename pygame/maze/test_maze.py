
from unittest import TestCase

from maze import Maze


class MazeTestCase(TestCase):
    def testDig0(self):
        oneMaze = Maze(1, 1)
        oneMaze.dig0(oneMaze.maze, 0, 0, 0)
        self.assertEqual(1, oneMaze.maze[0][0])
        oneMaze.dig0(oneMaze.maze, 0, 0, 1)
        self.assertEqual(0, oneMaze.maze[0][0])

    def testDig12(self):
        maze12 = Maze(1, 2)
        maze12.dig0(maze12.maze, 0, 0, 1)
        self.assertEqual(0, maze12.maze[0][0])
        self.assertEqual(1, maze12.maze[0][1])

        maze12 = Maze(1, 2)
        maze12.dig0(maze12.maze, 0, 0, 2, [])
        self.assertEqual(0, maze12.maze[0][0])
        self.assertEqual(0, maze12.maze[0][1])

    def testDigBigMaze(self):
        mazeXX = Maze(61, 61)
        mazeXX.dig()
        print(mazeXX)

    def checkRecursionDepth(self):
        import sys
        print(sys.getrecursionlimit())
