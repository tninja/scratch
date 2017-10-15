
import unittest

from p654_maximum_binary_tree import Solution, TreeNode

class SolutionTestCase(unittest.TestCase):

    def testTreeNode(self):
        pass

    def buildTestSets(self):
        input = [3,2,1,6,0,5]
        output = TreeNode(6)
        output.left = TreeNode(3)
        output.left.right = TreeNode(2)
        output.left.right.right = TreeNode(1)
        output.right = TreeNode(5)
        output.right.left = TreeNode(0)
        return (input, output)

    def testTreeNodeCompare(self):
        input1, output1 = self.buildTestSets()
        input2, output2 = self.buildTestSets()
        assert True == output1.compare(output2)
        assert False == TreeNode(1).compare(None)
        output2.left.left = TreeNode(-1)
        assert False == output2.compare(output1)

    def testSolution(self):
        solution = Solution()
        input, expected_output = self.buildTestSets()
        actual_output = solution.constructMaximumBinaryTree(input)
        assert True == expected_output.compare(actual_output)
