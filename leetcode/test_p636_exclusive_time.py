
import unittest

from p636_exclusive_time import Solution

class SolutionTestCase(unittest.TestCase):

    def testParseLine(self):
        solution = Solution()
        id, tag, tim = solution.parseLine("3:start:4")
        self.assertEqual(3, id)
        self.assertEqual(4, tim)
        
    def testScanBlocksFromLogs(self):
        logs = ["0:start:0",
                "1:start:2",
                "1:end:5",
                "2:start:2",
                "3:start:3",
                "3:end:4",
                "2:end:5",
                "0:end:6"]
        solution = Solution()
        parsed_logs = solution.parseLogs(logs)
        blocks = solution.scanblocksFromLogs(parsed_logs[1:-1])
        print blocks

    def testRun(self):
        n = 2
        logs = ["0:start:0",
                "1:start:2",
                "1:end:5",
                "2:start:6",
                "3:start:7",
                "3:end:8",
                "2:end:9",
                "0:end:10"]
        logs = ["0:start:0","1:start:2","1:end:5","0:end:6"]
        solution = Solution()
        parsed_logs = solution.parseLogs(logs)
        root = solution.buildCallingTree(parsed_logs)
        print solution.computeExclusiveTime(root)
