
from unittest import TestCase

from newsTwitterFeedback import NewsTwitterFeedback

class NewsTwitterFeedbackTestCase(TestCase):

    def buildPythonTwitterAPI(self):
        import twitter
        api = twitter.Api(consumer_key='s6Sy48rsPkmjZ2SSP3qMvYpdS',
                          consumer_secret='atXVzMFC5Zk7NcxiyWFWZ7BNBpCsdNmqN2Ao006OUHLdHLaJCS',
                          access_token_key='878804440353865728-5Rgh6mzwO2mFN1zqRidT8wuOHUguj28',
                          access_token_secret='63RGa2DeGyMjLRU8NEL5n67A2DCVA1CwtOd1dS2TCMvHX')
        return api
        
    def spikePrintCred(self):
        api = self.buildPythonTwitterAPI()
        print(api.VerifyCredentials())

    def buildTweepyAPI(self):
        import tweepy
        auth = tweepy.OAuthHandler('s6Sy48rsPkmjZ2SSP3qMvYpdS', 'atXVzMFC5Zk7NcxiyWFWZ7BNBpCsdNmqN2Ao006OUHLdHLaJCS')
        auth.set_access_token('878804440353865728-5Rgh6mzwO2mFN1zqRidT8wuOHUguj28', '63RGa2DeGyMjLRU8NEL5n67A2DCVA1CwtOd1dS2TCMvHX')
        api = tweepy.API(auth)
        return api

    def spikeTweepyHelloWorld(self):
        api = self.buildTweepyAPI()
        public_tweets = api.home_timeline()
        for tweet in public_tweets:
            print(tweet.text)

    def spikeSearch(self):
        api = self.buildTweepyAPI()
        # search_results = api.search('Watch the skies as Jupiter and Saturn align at night for the first time in 800 years')#, result_type='popular')
        query = 'Alien hunters detect mysterious radio signal from nearby star' # 1340492141726973954
        # query = 'Mammoth Iceberg Jeopardizes Millions of Penguins'
        search_results = api.search(query, result_type='popular')
        print(search_results)

    def spikeGetReply(self):
        pass
