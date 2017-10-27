
import numpy as np

class Solution(object):

    def canPartitionKSubsets(self, nums, k):
        partitionSum = self.calcPartitionSum(nums, k)
        if partitionSum is not None:
            pass
        else:
            return False

    def calcPartitionSum(self, nums, k):
        s = sum(nums)
        avg = s / k
        if s == avg * k:
            return avg
        else:
            return None

    def findSubsetIx(self, nums, n, partitionSum):
        cache = np.zeros((n, partitionSum))
        result = self.findSubsetIx0(self, nums, n, partitionSum, len(nums), [], cache)
        return result

    def findSubsetIx0(self, nums, n, partitionSum, k, ix, cache):
        pass

    def findArraySubsetSum(self, nums, ix):
        ss = sum([nums[i] for i in ix])
        return ss
