
import pygame
from pygame.locals import *

import random
import os

class Command(pygame.sprite.Sprite):
    def __init__(self, train, scale_factor=1.0):
        pygame.sprite.Sprite.__init__(self)
        self.train = train
        image = pygame.image.load('./dialog.only.png')
        self.image = train.resizeImage(image, int(train.height * scale_factor))
        self.height = train.height * scale_factor
        self.width = self.image.get_width() * self.height / self.image.get_height()
        self.gap = 0
        x, y = self.getPosition()
        self.rect = pygame.Rect(x, y, self.width, self.height)
        self.words = []
        self.maxSize = 18

    def getPosition(self):
        x = self.train.x + self.train.width + self.gap
        y = self.train.y + self.gap
        return (x, y)

    def move(self):
        x, y = self.getPosition()
        self.rect.topleft = (x, y)

    def print(self, screen):
        if len(self.words) > 0:
            label = ''.join(self.words[(-self.maxSize):])
            font = pygame.font.Font('freesansbold.ttf', 64)
            black = (0, 0, 0) 
            text = font.render(label, True, black)
            x, y = self.getPosition()
            tx = x + 50
            ty = y + self.height * 3 / 8
            screen.blit(text, (tx, ty))

    def command(self):
        if len(self.words) > self.maxSize:
            os.system('say "Mr. John Tu, I don\'t understand your command." &')
            self.words = []

    def read(self):
        if len(self.words) > 0:
            label = ''.join(self.words)
            os.system('say "%s" &' % label)
                
    def checkCommand(self, command):
        if len(self.words) >= len(command):
            if ''.join(self.words[-len(command):]) == command:
                return True
        return False
    
class Train(pygame.sprite.Sprite):
    def __init__(self, railway, screen_width, imageFile='./train1.only.png', height=100, dx=-3):
        pygame.sprite.Sprite.__init__(self)
        image = pygame.image.load(imageFile)
        self.originalImage = image
        self.image = self.resizeImage(image, height)
        self.width, self.height = self.image.get_width(), self.image.get_height()
        self.x = round(random.uniform(screen_width // 5, screen_width - self.width))
        self.y = railway.y - self.height + 20
        self.rect = pygame.Rect(self.x, self.y, self.width, self.height)
        self.dx = dx
        self.screen_width = screen_width
        self.command = Command(self)

    def move(self):
        self.x = self.x + self.dx
        if self.x > self.screen_width:
            self.x = - self.width
        elif self.x + self.width < 0:
            self.x = self.screen_width
        self.rect.topleft = (self.x, self.y)

    def speedUp(self):
        self.dx = self.dx - 2
        if self.dx < -20:
            self.dx = -20
        self.playTrainSoundEffect()

    def speedDown(self):
        self.dx = self.dx + 2
        if self.dx > 0:
            self.dx = 0
        self.playSoundEffect('./ding.mp3', 0)

    def playTrainSoundEffect(self):
        self.playSoundEffect('./train.sound.effect.mp3', 0)

    def playSoundEffect(self, mp3file, channel=0):
        ## https://stackoverflow.com/questions/53617967/play-music-and-sound-effects-on-top-of-each-other-pygame
        pygame.mixer.Channel(channel).play(pygame.mixer.Sound(mp3file), maxtime=6000)

    @staticmethod
    def resizeImage(image, height):
        assert height > 0
        original_height = image.get_height()
        scale_factor = height * 1.0 / original_height
        original_width = image.get_width()
        width = int(scale_factor * original_width)
        resizedImage = pygame.transform.scale(image, (width, height))
        return resizedImage

class Railway(pygame.sprite.Sprite):
    def __init__(self, screen_width, y):
        pygame.sprite.Sprite.__init__(self)
        self.x = 0
        self.y = y
        imageFile = './rails.long.png'
        image = pygame.image.load(imageFile)
        self.originalImage = image
        self.image = self.resizeImage(image, screen_width)
        self.width, self.height = self.image.get_width(), self.image.get_height()
        self.rect = pygame.Rect(self.x, self.y, self.width, self.height)

    def move(self):
        pass

    @staticmethod
    def resizeImage(image, width):
        assert width > 0
        original_width = image.get_width()
        scale_factor = width * 1.0 / original_width
        original_height = image.get_height()
        height = int(scale_factor * original_height)
        resizedImage = pygame.transform.scale(image, (width, height))
        return resizedImage

class Driver(pygame.sprite.Sprite):
    def __init__(self, train, height=50):
        pygame.sprite.Sprite.__init__(self)
        self.height = height
        self.setTrain(train)

    def setTrain(self, train):
        self.train = train
        image = pygame.image.load('./john.tu.home.human.left.png')
        self.width = round(self.height / image.get_height() * image.get_width())
        self.image = train.resizeImage(image, self.height)
        x, y = self.getPosition()
        self.rect = pygame.Rect(x, y, self.width, self.height)

    def getPosition(self):
        x = self.train.x + 30
        y = self.train.y + 30
        return (x, y)

    def move(self):
        x, y = self.getPosition()
        self.rect.topleft = (x, y)

class Airplane(pygame.sprite.Sprite):
    def __init__(self, screen_width, y, imageFile='./helicopter.small.0.png', height=150, dx=4):
        pygame.sprite.Sprite.__init__(self)
        image = pygame.image.load(imageFile)
        self.originalImage = image
        self.image = Train.resizeImage(image, height)
        self.width, self.height = self.image.get_width(), self.image.get_height()
        self.x = round(random.uniform(screen_width // 5, screen_width - self.width))
        self.y = y
        self.rect = pygame.Rect(self.x, self.y, self.width, self.height)
        self.dx = dx
        self.screen_width = screen_width

    def move(self):
        self.x = self.x + self.dx
        if self.x > self.screen_width:
            self.x = - self.width
        elif self.x + self.width < 0:
            self.x = self.screen_width
        self.rect.topleft = (self.x, self.y)

class JetDriver(pygame.sprite.Sprite):
    def __init__(self, jet, height=50, imgFileName='./John.jpg'):
        pygame.sprite.Sprite.__init__(self)
        self.height = height
        image = pygame.image.load(imgFileName)
        image = pygame.transform.rotate(image, -90)
        self.width = round(self.height / image.get_height() * image.get_width())
        self.image = Train.resizeImage(image, self.height)
        self.setJet(jet)

    def setJet(self, jet):
        self.jet = jet
        x, y = self.getPosition()
        self.rect = pygame.Rect(x, y, self.width, self.height)

    def getPosition(self):
        x = self.jet.x + self.jet.width - self.width - 100
        y = self.jet.y + 30 
        return (x, y)

    def move(self):
        x, y = self.getPosition()
        self.rect.topleft = (x, y)
