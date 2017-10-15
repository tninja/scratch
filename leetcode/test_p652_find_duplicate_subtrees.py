
import unittest

from p652_find_duplicate_subtrees import TreeNode, Solution

class SolutionTestCase(unittest.TestCase):

    def testTreeNode(self):
        root = TreeNode(0)
        root.left = TreeNode(1)
        root.right = TreeNode(2)
        d = {}
        d[(root, root.right)] = True ## not failed means treeNode can be a key

    def buildTestTree(self):
        root = TreeNode(1)
        root.left = TreeNode(2)
        root.left.left = TreeNode(4)
        root.right = TreeNode(3)
        root.right.left = TreeNode(2)
        root.right.left.left = TreeNode(4)
        root.right.right = TreeNode(4)
        return root

    def testFindDuplicateSubtrees(self):
        root = self.buildTestTree()
        solution = Solution()
        result = solution.findDuplicateSubtrees(root)
        print result
