
from unittest import TestCase

from word_route import WordRoute
from maze import Maze


class WordRouteTestCase(TestCase):
    def testGetStart(self):
        self.assertTrue(WordRoute.getStart([]) is None)
        self.assertTrue(WordRoute.getStart([[]]) is None)
        self.assertTrue(WordRoute.getStart([[1]]) is None)
        self.assertEqual((0, 0), WordRoute.getStart([[0]]))
        self.assertEqual((0, 1), WordRoute.getStart([[1, 0]]))

    def testGetEnd(self):
        self.assertTrue(WordRoute.getEnd([], None) is None)
        self.assertTrue(WordRoute.getEnd([[]], None) is None)
        self.assertTrue(WordRoute.getEnd([[0]], None) is None)
        self.assertTrue(WordRoute.getEnd([[0]], (0, 0)) is None)
        self.assertTrue(WordRoute.getEnd([[0, 1]], (0, 0)) is None)
        self.assertEqual((0, 1), WordRoute.getEnd([[0, 0]], (0, 0)))

    def testDistributeWord(self):
        result1 = WordRoute.distributeWord([[0, 0]], 'a', (0, 0), (0, 1))
        self.assertEqual([('a', (0, 1))], result1[0])

        self.assertTrue(WordRoute.distributeWord([[0, 0, 0]], 'ab', (0, 0), (0, 1)) is None)
        result2 = WordRoute.distributeWord([[0, 0, 0]], 'ab', (0, 0), (0, 2))
        self.assertEqual([('a', (0, 1)), ('b', (0, 2))], result2[0])

        result3 = WordRoute.distributeWord([[0, 1], [0, 0], [1, 0]], 'abc', (0, 0), (2, 1))
        self.assertEqual([('a', (1, 0)), ('b', (1, 1)), ('c', (2, 1))], result3[0])

    def testPartitionRouteToPoints(self):
        self.assertEqual([1], WordRoute.partitionRouteToPoints([1], 1))
        self.assertEqual([2], WordRoute.partitionRouteToPoints([1, 2], 1))
        self.assertEqual([1, 2], WordRoute.partitionRouteToPoints([1, 2], 2))
        self.assertEqual([2, 3], WordRoute.partitionRouteToPoints([1, 2, 3], 2))
        self.assertEqual([2, 4], WordRoute.partitionRouteToPoints([1, 2, 3, 4], 2))
        self.assertEqual([1, 2, 4], WordRoute.partitionRouteToPoints([1, 2, 3, 4], 3))
        self.assertEqual([1, 2, 5], WordRoute.partitionRouteToPoints([1, 2, 3, 4, 5], 3)) ## ???
        self.assertEqual([2, 4, 6], WordRoute.partitionRouteToPoints([1, 2, 3, 4, 5, 6], 3))

    def testBfsRoute(self):
        self.assertEqual([(0, 0), (0, 1)], WordRoute.bfsRoute([[0, 0]], (0, 0), (0, 1)))
        self.assertEqual([(0, 0), (0, 1), (0, 2)], WordRoute.bfsRoute([[0, 0, 0]], (0, 0), (0, 2)))
        self.assertEqual([(0, 0), (0, 1), (1, 1)], WordRoute.bfsRoute([[0, 0], [1, 0]], (0, 0), (1, 1)))
        self.assertEqual([(0, 0), (1, 0), (1, 1)], WordRoute.bfsRoute([[0, 1], [0, 0]], (0, 0), (1, 1)))

        self.assertEqual(None, WordRoute.bfsRoute([[0, 1, 0]], (0, 0), (0, 2)))

    def testGetAdjacentPoints(self):
        self.assertEqual([],
                         WordRoute.getAdjacentPoints((0, 0), 1, 1))
        self.assertEqual(set([(0, 1), (1, 0), (2, 1), (1, 2)]),
                         set(WordRoute.getAdjacentPoints((1, 1), 3, 3)))
        self.assertEqual(set([(0, 1), (1, 0), (1, 2)]),
                         set(WordRoute.getAdjacentPoints((1, 1), 2, 3)))
        self.assertEqual(set([(0, 1), (1, 0), (2, 1)]),
                         set(WordRoute.getAdjacentPoints((1, 1), 3, 2)))
        self.assertEqual(set([(0, 0), (2, 0)]),
                         set(WordRoute.getAdjacentPoints((1, 0), 3, 1)))

    def testBuildRoute(self):
        mazeXX = Maze(21, 21)
        mazeXX.dig()
        # print(mazeXX)
        wordRoute = WordRoute(mazeXX.maze)
        chLocList, route = wordRoute.buildRoute('dumptruck')
        # print(chLocList)
        traceMatrix = WordRoute.buildTrace(mazeXX.maze, chLocList, route)
        mazeXX.maze = traceMatrix
        print(mazeXX)
