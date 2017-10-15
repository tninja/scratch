
import logging

class MagicDictionary(object):

    def __init__(self):
        self.dict = None

    def buildDict(self, dict):
        self.dict = dict

    def search(self, word):
        pass

    def if1CharDiff(self, word1, word2):
        if len(word1) == len(word2):
            count_diff = 0
            for i in range(len(word1)):
                if word1[i] != word2[i]:
                    count_diff = count_diff + 1
                if count_diff > 1:
                    return False
            return count_diff == 1
        else:
            return False
