class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

    def compare(self, tree_node):
        if tree_node is None:
            return False
        elif self.val != tree_node.val:
            return False
        else:
            lres = True
            if self.left is not None:
                lres = self.left.compare(tree_node.left)
            rres = True
            if self.right is not None:
                rres = self.right.compare(tree_node.right)
            return lres and rres


class Solution(object):
    def constructMaximumBinaryTree(self, nums):
        self.nums = nums
        root = self.constructMaximumBinaryTree0(0, len(self.nums))
        return root

    def constructMaximumBinaryTree0(self, start, stop):
        if start > stop:
            raise Exception(
                "start={} should always be <= stop={}, sth is wrong here".format(
                    start, stop))
        elif start == stop:
            return None  ## empty node
        else:
            max_idx = self.getNumsMaxIndex(start, stop)
            node = TreeNode(self.nums[max_idx])
            node.left = self.constructMaximumBinaryTree0(start, max_idx)
            node.right = self.constructMaximumBinaryTree0(max_idx + 1, stop)
            return node

    def getNumsMaxIndex(self, start, stop):
        max_idx = self.nums.index(max(self.nums[start:stop]))
        return max_idx
