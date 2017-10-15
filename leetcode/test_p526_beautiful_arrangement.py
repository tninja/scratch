
import unittest

from p526_beautiful_arrangement import Solution

class SolutionTestCase(unittest.TestCase):

    def testSolution(self):
        s = Solution()
        print s.countArrangement(14)
