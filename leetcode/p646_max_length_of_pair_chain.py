class Solution(object):
    def findLongestChain(self, pairs):
        """
        :type pairs: List[List[int]]
        :rtype: int
        """
        self.pairs = pairs
        self.pairs.sort()
        self.cache = {}
        result = self.findLongestChainWithDP(len(pairs), 1000000)
        return result

    def findLongestChainWithDP(self, n, m):
        if (n, m) in self.cache:
            return self.cache[(n, m)]
        elif n == 0:
            return 0
        else:
            i = n - 1; x = self.pairs[i][0]; y = self.pairs[i][1]
            if y >= m: ## not eligible
                if i > 0:
                    result = self.findLongestChainWithDP(i, m)
                else:
                    result = 0
            else:
                with_i_result = 1 + self.findLongestChainWithDP(i, x)
                without_i_result = self.findLongestChainWithDP(i, m)
                result = max(with_i_result, without_i_result)
            self.cache[(n, m)] = result
            return result
