
from p646_max_length_of_pair_chain import Solution
import unittest

class SolutionTestCase(unittest.TestCase):

    def testFindLongestChain(self):
        solution = Solution()
        testPairs = [[1,2], [2,3], [3,4]]
        result = solution.findLongestChain(testPairs)
        print result

        testPairs2 = [[3,4],[2,3],[1,2]]
        result2 = solution.findLongestChain(testPairs2)
        print result2
