
import unittest

from p676_implement_magic_dictionary import MagicDictionary

class SolutionTestCase(unittest.TestCase):

    def testRun(self):
        pass

    def testIf1CharDiff(self):
        md = MagicDictionary()
        assert True == md.if1CharDiff('hello', 'hhllo')
        assert False == md.if1CharDiff('hello', 'hello')
        assert False == md.if1CharDiff('hello', 'hell')
