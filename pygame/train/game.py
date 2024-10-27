
import pygame
from pygame.locals import *

import time
import random
import os

from spirits import Railway, Train, Driver, Airplane, JetDriver

class Game(object):
    def __init__(self, width=1800, height=800):
        self.width = width
        self.height = height
        imageFile = self.getBgImg()
        print("imageFile=%s" % imageFile)
        assert os.path.exists(imageFile)
        image = pygame.image.load(imageFile)
        self.background = pygame.transform.scale(image, (self.width, self.height))
        screen_res = [self.width, self.height]
        self.screen = pygame.display.set_mode(screen_res)
        self.sprites = self.buildSprites()
        pygame.init()
        pygame.mixer.init()

    def buildSprites(self):
        sprites = pygame.sprite.Group()
        railway1 = Railway(self.width, self.height * 0.6)
        sprites.add(railway1)
        railway2 = Railway(self.width, self.height * 0.775)
        sprites.add(railway2)
        railway3 = Railway(self.width, self.height * 0.95)
        sprites.add(railway3)
        train1 = Train(railway2, self.width, dx=-10)
        sprites.add(train1)
        sprites.add(train1.command)
        train2 = Train(railway3, self.width, './train2.only.png', 140, dx=-3)
        sprites.add(train2)
        sprites.add(train2.command)
        train3 = Train(railway1, self.width, './train3.0.png', 140, dx=-7)
        sprites.add(train3)
        sprites.add(train3.command)
        self.trains = [train1, train2, train3]
        self.activeTrainIx = 1
        driver = Driver(train2)
        sprites.add(driver)
        self.driver = driver
        helicopter = Airplane(self.width, self.height * 0.25, height=150, dx=4)
        sprites.add(helicopter)
        jetfighter = Airplane(self.width, self.height * 0.05, './jet.fighter.0.png', height=100, dx=8)
        sprites.add(jetfighter)
        john = JetDriver(jetfighter)
        sprites.add(john)
        eian = JetDriver(helicopter, imgFileName='./Eian.jpg')
        sprites.add(eian)
        return sprites

    def activeTrain(self):
        return self.trains[self.activeTrainIx]

    def getBgImg(self):
        imgList = ['./farm1.jpg', './farm2.jpg', './farm3.jpg']
        ix = int(random.uniform(0, len(imgList)))
        return imgList[ix]

    def play(self):
        self.playBgm()
        pygame.display.set_caption("Trains in the farm")
        finished = False
        while not finished:
            for event in pygame.event.get():
                if event.type == QUIT:
                    finished = True
                elif event.type == pygame.KEYDOWN:
                    if event.key is not None:
                        command = self.activeTrain().command
                        if event.key == pygame.K_RETURN:
                            command.read()
                        elif event.key == pygame.K_BACKSPACE or event.key == pygame.K_DELETE:
                            command.words = []
                        elif event.key == pygame.K_SPACE:
                            self.activeTrainIx = (self.activeTrainIx + 1) % len(self.trains)
                            self.driver.setTrain(self.activeTrain())
                            os.system('say "Mr. John Tu switched to a different train" &')
                        elif event.key < 256:
                            ch = chr(event.key)
                            self.playKeyInput(ch)
                            command.words.append(ch)
                            command.command()
                            if event.key == pygame.K_w or event.key == pygame.K_UP:
                                self.activeTrain().speedUp()
                            elif event.key == pygame.K_s or event.key == pygame.K_DOWN:
                                self.activeTrain().speedDown()
            self.draw()
            self.moveSprites(self.sprites)
            time.sleep(0.02)

    def playKeyInput(self, ch):
        self.activeTrain().playSoundEffect('./key.input.mp3')
        os.system("say '%s' &" % ch)

    def moveSprites(self, sprites):
        for sprite in sprites.sprites():
            sprite.move()

    def draw(self):
        self.screen.blit(self.background, (0, 0))
        self.sprites.draw(self.screen)
        for train in self.trains:
            command = train.command
            command.print(self.screen)
        pygame.display.update()

    def playBgm(self):
        pygame.mixer.music.load('./Trains.Blippi.mp3')
        pygame.mixer.music.set_volume(0.2)
        pygame.mixer.music.play(loops=-1)  # loop forever
