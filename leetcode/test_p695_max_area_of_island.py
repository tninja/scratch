
import unittest

from p695_max_area_of_island import Solution

class SolutionTestCase(unittest.TestCase):

    def testMaxAreaOfIsland(self):
        solution = Solution()
        dataset1 = self.buildTestDataset1()
        assert 6 == solution.maxAreaOfIsland(dataset1)
        dataset2 = self.buildTestDataset2()
        assert 0 == solution.maxAreaOfIsland(dataset2)
    
    def buildTestDataset1(self):
        testData = [[0,0,1,0,0,0,0,1,0,0,0,0,0],
                    [0,0,0,0,0,0,0,1,1,1,0,0,0],
                    [0,1,1,0,1,0,0,0,0,0,0,0,0],
                    [0,1,0,0,1,1,0,0,1,0,1,0,0],
                    [0,1,0,0,1,1,0,0,1,1,1,0,0],
                    [0,0,0,0,0,0,0,0,0,0,1,0,0],
                    [0,0,0,0,0,0,0,1,1,1,0,0,0],
                    [0,0,0,0,0,0,0,1,1,0,0,0,0]]
        return testData

    def buildTestDataset2(self):
        testData = [[0,0,0,0,0,0,0,0]]
        return testData

    def testQueue(self):
        from queue import Queue
        q = Queue()
        q.put("hello")
        q.put("world")
        print q.get()
        q.put("glory to god")
        print "qsize=%i" % q.qsize()
        print q.empty()
        print q.get()
        print q.get()
        print q.empty()
