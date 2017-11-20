
# 557. Reverse Words in a String III

class Solution(object):

    def reverseWords(self, s):
        """
        :type s: str
        :rtype: str
        """
        result = ' '.join([word[::-1] for word in s.split(' ')])
        return result

# 556. Next Greater Element III 

class Solution(object):

    def nextGreaterElement(self, n):
        """
        :type n: int
        :rtype: int
        """
        from itertools import permutations

        s = [int(''.join(l)) for l in list(permutations(list(str(n))))]
        r = [x for x in s if x > n]
        if len(r) == 0:
            return -1
        return min(r)

# 541. Reverse String II 

s = "abcdefg"
k = 2
ol = []
for i in range(0, len(s), k*2):
    m = i + k; e = i + k * 2
    ol.append(s[i:m][::-1])
    ol.append(s[m:e])
''.join(ol)

# 643. Maximum Average Subarray I

nums = [1, 12, -5, -6, 50, 3]
k = 4

n = len(nums)
ss = sum(nums[:k])
max_ss = ss
for i in range(k, n):
    start = i - k
    ss = ss - nums[start] + nums[i]
    if ss > max_ss:
        max_ss = ss
result = max_ss * 1.0 / k

# 644. Maximum Average Subarray II

## find i, j to maximize sum[i, j]
## Looks like a DP problem

# 640. Solve the equation

equation = "x+5-3+x=6+x-2"

import re
re.findall('[+|-][0-9|x]+', 'x+5-3+x')

def partition_str(s, n):
    return [s[i:i+n] for i in range(0, len(s), n)]

def partition_expr(s):
    if s[0] not in ['-', '+']:
        s = '+' + s
    import re
    result = re.findall('[+|-][0-9|x]+', s)
    return result

def extract_withx_withoutx(left):
    if left[0] not in ['+', '-']:
        left = '+' + left
    left_elements = partition_expr(left, 2)
    left_withx_str = [ch for ch in left_elements if ch.endswith('x')]
    left_withx = map(lambda xstr: 1 if xstr=='+x' else -1 if xstr=='-x' else int(xstr[:-1]), left_withx_str)
    left_withoutx = [int(ch) for ch in left_elements if not ch.endswith('x')]
    return left_withx, left_withoutx

left, right = equation.split("=")

left_withx, left_withoutx = extract_withx_withoutx(left)
right_withx, right_withoutx = extract_withx_withoutx(right)

left_x = left_withx; left_x.extend([-x for x in right_withx])
right_n = right_withoutx; right_n.extend([-n for n in left_withoutx])

        if sum_left_x != 0:
            return 'x=' + str(sum(right_n) / sum(left_x))
        elif sum_right_n != 0:
            return "No solution"
        else: # sum_right_n == 0
            return "Infinite solutions"

# 638. Shopping Offers

input1 = ([2,5], [[3,0,5],[1,2,10]], [3,2]) 
input2 = ([2,3,4], [[1,1,0,4],[2,2,1,9]], [1,2,1])


class Solution(object):
    def shoppingOffers(self, price, special, needs):
        price = tuple(price)
        special = self.checkAndFilterSpeciallOffers(price, [tuple(offer) for offer in special])
        needs = tuple(needs)
        cache = {}
        return self.solve(cache, price, special, needs)

    def solve(self, cache, price, special, needs):
        if needs not in cache:
            matched_offers = self.matchSpecialOffersGivenNeeds(special, needs)
            needs_price_candidates = []
            if len(matched_offers) > 0:
                for offer_price, updated_needs in matched_offers:
                    price_candidate = offer_price + self.solve(cache, price, special, updated_needs)
                    needs_price_candidates.append(price_candidate)
                cache[needs] = min(needs_price_candidates)
            else:
                cache[needs] = self.totalPriceWithoutSpecialOffer(price, needs)
        return cache[needs]

    def checkAndFilterSpeciallOffers(self, price, special):
        filtered_special = []
        for offer in special:
            offer_price = offer[-1]
            original_price = sum([price[i] * offer[i] for i in range(len(price))])
            if offer_price > original_price:
                filtered_special.append(original_price)
        return filtered_special

    def matchSpecialOffersGivenNeeds(self, special, needs):
        result = []
        for offer in special:
            is_voliate = len([i for i in range(len(needs)) if needs[i] < special[i]]) > 0 ### You are not allowed to buy more items than you want, even if that would lower the overall price.
            if not is_voliate:
                updated_needs = tuple([needs[i] - special[i] for i in range(len(needs))])
                result.append((offer[-1], updated_needs))
        return result

    def totalPriceWithoutSpecialOffer(self, price, needs):
        total_price = sum([price[i] * needs[i] for i in range(len(needs))])
        return total_price

# 637. average of levels in binary tree

class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

treeNode = TreeNode(10)
treeNode.left = TreeNode(5)
treeNode.right = TreeNode(8)
treeNode.left.left = TreeNode(3)
treeNode.left.right = TreeNode(-1)
treeNode.right.right = TreeNode(0)

class Solution(object):
    def averageOfLevels(self, root):
        from Queue import Queue
        queue = Queue()
        queue.put([root])
        levels = self.bfs(queue)
        result = [sum(level) * 1.0 / len(level) for level in levels]
        return result
    
    def bfs(self, queue):
        result = []
        while not queue.empty():
            node_list = queue.get()
            result.append([node.val for node in node_list])
            next_level = []
            for node in node_list:
                if node.left:
                    next_level.append(node.left)
                if node.right:
                    next_level.append(node.right)
            if len(next_level) > 0:
                queue.put(next_level)
        return result

solution = Solution()
solution.averageOfLevels(treeNode)
        

# 636. Exclusive Time of Functions

class Solution(object):
    def exclusiveTime(self, n, logs):
        callingTree = self.buildCallingTree(logs)

    def buildCallingTree(self, logs):
        pass

    def scanblocksFromLogs(self, logs):
        pass

    def testRun(self):
        n = 2
        logs = ["0:start:0",
                "1:start:2",
                "1:end:5",
                "0:end:6"]
        return self.exclusiveTime(n, logs)

# 645. Set Mismatch

nums = [1,2,2,4]
n = len(nums)
total = sum(range(1, n+1))

d = {}
for i in nums:
    if i in d:
        d[i] = d[i] + 1
    else:
        d[i] = 1

dups = -1
for key in d:
    if d[key] == 2:
        dups = key

missing = total - (sum(nums) - dups)

[dups, missing]

## practice numpy & scipy (for sparse matrix)

import numpy as np

zm = np.zeros((4,4))

zm[0,0]

[1,2,3,4][0]

class Solution(object):
    def validPalindrome(self, s):
        """
        :type s: str
        :rtype: bool
        """
        for ix in range(len(s)):
            before = s[:ix]; after = s[(ix+1):]
            rs = before + after
            if self.isPalindrome(rs):
                return True
        return False

    def isPalindrome(self, s):
        rs = self.reverseString(s)
        return s == rs

    def reverseString(self, s):
        rs = s[::-1]
        return rs

s = Solution()

abca
acba

class Solution(object):
    def calPoints(self, ops):
        """
        :type ops: List[str]
        :rtype: int
        """
        score_stack = []
        for ch in ops:
            if '+' == ch:
                cur_score = score_stack[-2] + score_stack[-1]
                score_stack.append(cur_score)
            elif 'C' == ch:
                score_stack = score_stack[:-1]
            elif 'D' == ch:
                cur_score = score_stack[-1] * 2
                score_stack.append(cur_score)
            else:
                cur_score = int(ch)
                score_stack.append(cur_score)
        return sum(score_stack)

s = Solution()

s.calPoints(["5","2","C","D","+"])

s.calPoints(["5","-2","4","C","D","9","+","+"])

def testTypeHint(a: str) -> str:
    return "this is a string: %s" % a

import pandas as pd
from pandas import DataFrame
import numpy as np

def testTypeHint2(df: DataFrame) -> int:
    return df.size

dates = pd.date_range('20130101', periods=6)
df = pd.DataFrame(np.random.randn(6,4), index=dates, columns=list('ABCD'))
testTypeHint2(df)

def what_happens(df: DataFrame) -> int:
    return df.abs(123)

