
import unittest

from p653_two_sum_4_input_is_a_BST import TreeNode, Solution

class SolutionTestCase(unittest.TestCase):

    def testTreeNode(self):
        root = TreeNode(0)
        root.left = TreeNode(1)
        root.right = TreeNode(2)
        d = {}
        d[(root, root.right)] = True ## not failed means treeNode can be a key

    def buildTestTree(self):
        root = TreeNode(0)
        root.left = TreeNode(3)
        root.right = TreeNode(6)
        root.left.left = TreeNode(2)
        root.left.right = TreeNode(4)
        root.right.right = TreeNode(7)
        return root

    def testSolution(self):
        testTree = self.buildTestTree()
        solution = Solution()
        assert True == solution.findTarget(testTree, 9)
        assert False == solution.findTarget(testTree, 28)

    def testToolz(self):
        from toolz import itertoolz
        print itertoolz.groupby(lambda l: l, ['a', 'a', 'b'])
        print itertoolz.groupby(lambda l: l, [0, 3, 6, 2, 4, 7])
