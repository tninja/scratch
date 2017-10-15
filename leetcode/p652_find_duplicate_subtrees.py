
class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution(object):
    def findDuplicateSubtrees(self, root):
        self.result = []
        self.cache = {}
        self.findDuplicateSubtrees0(root)
        return self.result

    def findDuplicateSubtrees0(self, root):
        if root is not None:
            print root.val
            left = root.left
            self.findDuplicateSubtrees0(left)
            right = root.right
            self.findDuplicateSubtrees0(right)

            self.findDuplicateSubtreesFromLeftAndRight(left, right)

    def findDuplicateSubtreesFromLeftAndRight(self, left, right):
        if left is not None and right is not None:
            print left.val, right.val
            isDuplicate = False
            if (left, right) in self.cache:
                isDuplicate = self.cache[(left, right)]
            else:
                rootAlign = left.val == right.val
                leftAlign = self.findDuplicateSubtreesFromLeftAndRight(left.left, right.left)
                rightAlign = self.findDuplicateSubtreesFromLeftAndRight(left.right, right.right)
                if rootAlign and leftAlign and rightAlign:
                    isDuplicate = True
                else:
                    isDuplicate = False
                if isDuplicate:
                    self.result.append(left)
            self.cache[(left, right)] = isDuplicate
            return isDuplicate
        else:
            return True
                    
