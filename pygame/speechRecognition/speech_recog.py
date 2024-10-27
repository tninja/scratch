
class SpeechRecognition(object):
    def getSpeechFromMic(self):
        import speech_recognition as sr
        r = sr.Recognizer()
        mic = sr.Microphone()
        with mic as source:
            r.adjust_for_ambient_noise(source)
            audio = r.listen(source)
            transcript = r.recognize_google(audio)
            return transcript

    def promptSpeechRecogAndSpeak(self, prompt="something!"):
        self.printAndSay("Say %s" % prompt)
        speech = self.getSpeechFromMic()
        self.printAndSay('You said "%s"' % speech)
        return speech

    def printAndSay(self, sentence):
        print(sentence)
        import os
        os.system('say "%s"' % sentence)

    def runSaySth(self):
        while True:
            try:
                speech = self.promptSpeechRecogAndSpeak()
                import time
                time.sleep(1)
                if (speech.lower() == 'bye-bye'):
                    break
            except Exception:
                self.printAndSay("Oops! Didn't catch that. Let's do it again")
        self.printAndSay("Have a good evening.")

    def runSayDaysOfTheWeek(self):
        words = [
            "Sunday",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday"
        ]
        words = [
            "Firetruck",
            "Tractor",
            "Monster Truck",
            "Police Car",
            "Dump Truck",
            "Excavator",
            "Ambulance"
        ]
        i = 0
        while i < len(words):
            try:
                word = words[i]
                speech = self.promptSpeechRecogAndSpeak(words[i])
                import time
                time.sleep(1)
                if (speech.lower() == 'bye-bye'):
                    break
                elif (self.speechEqual(speech, word)):
                    self.printAndSay("You are doing great! Move to next word")
                    i = i + 1
                else:
                    self.printAndSay("The pronunciation doesn't sound correct to me. Let's try it again")
            except Exception:
                self.printAndSay("Oops! Didn't catch that. Let's do it again")
        self.printAndSay("Have a good evening.")

    @staticmethod
    def speechEqual(speech1, speech2):
        speech1 = speech1.lower().replace(' ', '')
        speech2 = speech2.lower().replace(' ', '')
        return speech1 == speech2

recog = SpeechRecognition()
recog.runSayDaysOfTheWeek()
