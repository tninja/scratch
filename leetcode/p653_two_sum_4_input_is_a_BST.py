
class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None


class Solution(object):
    def findTarget(self, root, k):
        val_dict = self.getValDict(root)
        return self.checkSum2(val_dict, k)

    def checkSum2(self, val_dict, k):
        for key in val_dict:
            rest = k - key
            if rest == key:
                if val_dict[rest] > 1:
                    return True
            else:
                if rest in val_dict:
                    return True
        return False
        
    def getValDict(self, root):
        node_list = self.bfs(root)
        val_list = [node.val for node in node_list]
        val_dict = self.listSizeGroupBy(val_list)
        return val_dict

    def listSizeGroupBy(self, val_list):
        val_dict = {}
        for val in val_list:
            if val in val_dict:
                val_dict[val] = val_dict[val] + 1
            else:
                val_dict[val] = 1
        return val_dict

    def bfs(self, root):
        node_list = []
        if root is not None:
            node_list.append(root)
        i = 0
        while i < len(node_list):
            cur_node = node_list[i]
            if cur_node.left is not None:
                node_list.append(cur_node.left)
            if cur_node.right is not None:
                node_list.append(cur_node.right)
            i = i + 1
        return node_list
