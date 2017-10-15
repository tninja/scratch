
import unittest

from p638_shopping_offers import Solution

class SolutionTestCase(unittest.TestCase):

    def testCheckAndFilterSpecialOffers(self):
        s = Solution()
        price = (2, 5)
        special = [(3,0,5),(1,2,10)]
        s.checkAndFilterSpecialOffers(price, special)

    def testShippingOffers1(self):
        s = Solution()
        price = [2, 5]
        special = [[3,0,5],[1,2,10]]
        needs = [3, 2]
        s.shoppingOffers(price, special, needs)

    def testShippingOffers2(self):
        s = Solution()
        price = [2, 3, 4]
        special = [[1, 1, 0, 4], [2, 2, 1, 9]]
        needs = [1, 2, 1]
        s.shoppingOffers(price, special, needs)
