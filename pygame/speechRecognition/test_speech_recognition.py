
from unittest import TestCase

# import pygame
# from pygame.locals import *

import time
import random
import os

from speech_recog import SpeechRecognition

# this is called from the background thread
def callback(recognizer, audio):
    # received audio data, now we'll recognize it using Google Speech Recognition
    try:
        # for testing purposes, we're just using the default API key
        # to use another API key, use `r.recognize_google(audio, key="GOOGLE_SPEECH_RECOGNITION_API_KEY")`
        # instead of `r.recognize_google(audio)`
        print("Google Speech Recognition thinks you said " + recognizer.recognize_google(audio))
    except sr.UnknownValueError:
        print("Google Speech Recognition could not understand audio")
    except sr.RequestError as e:
        print("Could not request results from Google Speech Recognition service; {0}".format(e))

class SpeechRecognitionTestCase(TestCase):

    def testSpeechRecog(self):
        ## https://towardsdatascience.com/building-a-simple-voice-assistant-for-your-mac-in-python-62247543b626
        import speech_recognition as sr
        r = sr.Recognizer()
        mic = sr.Microphone()
        with mic as source:
            print("going to adjust_for_ambient_noise")
            r.adjust_for_ambient_noise(source)
            print("going to listen")
            audio = r.listen(source)
            print("listening finished")
            transcript = r.recognize_google(audio)
            print(transcript)

    def testSpeechRecogBg(self):
        import sys
        print(sys.version_info)
        ## https://towardsdatascience.com/building-a-simple-voice-assistant-for-your-mac-in-python-62247543b626
        import speech_recognition as sr
        r = sr.Recognizer()
        m = sr.Microphone()
        with m as source:
            print("going to adjust_for_ambient_noise")
            r.adjust_for_ambient_noise(source)  # we only need to calibrate once, before we start listening
        # start listening in the background (note that we don't have to do this inside a `with` statement)
        print("going to listen")
        stop_listening = r.listen_in_background(m, callback)
        # `stop_listening` is now a function that, when called, stops background listening
        # do some unrelated computations for 5 seconds
        print("waiting")
        for _ in range(50): time.sleep(0.1)  # we're still listening even though the main thread is doing other things
        # calling this function requests that the background listener stop listening
        print("going to stop listen")
        # stop_listening(wait_for_stop=False)
        stop_listening(wait_for_stop=True)
        # do some more unrelated things
        print("waiting")
        while True: time.sleep(0.1)  # we're not listening anymore, even though the background thread might still be running for a second or two while cleaning up and stopping

    def testSpeechEqual(self):
        self.assertTrue(SpeechRecognition.speechEqual("Firetruck", "fire truck"))
