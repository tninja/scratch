
import logging
import copy

class Solution(object):

    def countArrangement(self, N):
        candidate = self.deriveArrangeCandidate(N) 
        logging.info('candidate={}'.format(candidate))
        self.n = N
        self.candidate = candidate
        result = self.makeArrange(N)
        return len(result)

    def deriveArrangeCandidate(self, N):
        candidate = {}
        for i in range(1, N+1):
            candidate[i] = list()
            for j in range(1, N+1):
                if 0 == i % j or 0 == j % i:
                    candidate[i].append(j)
        return candidate

    def makeArrange(self, m):
        if 1 == m:
            result = [[x] for x in self.candidate[m]]
            return result
        else: ## 1 < m
            prior = self.makeArrange(m - 1)
            full_set = set(range(1, self.n+1))
            result = []
            for ri in prior:
                ris = set(ri)
                avail_slot = full_set - ris
                for j in avail_slot:
                    if m in self.candidate[j]:
                        new_ri = copy.copy(ri)
                        new_ri.append(j)
                        result.append(new_ri)
            return result
