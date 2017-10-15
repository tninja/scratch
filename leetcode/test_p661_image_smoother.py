import unittest
import logging

from p661_image_smoother import Solution

class SolutionTestCase(unittest.TestCase):

    def testImageSmoother(self):
        testInput = self.buildTestInput2()
        solution = Solution()
        testOutput = solution.imageSmoother(testInput)
        print testOutput

    def buildTestInput(self):
        input = [
            [1, 1, 1],
            [1, 0, 1],
            [1, 1, 1]
            ]
        return input

    def buildTestInput2(self):
        input = [[2,3,4],[5,6,7],[8,9,10],[11,12,13],[14,15,16]]
        return input
