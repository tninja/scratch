
from unittest import TestCase

import pygame
from pygame.locals import *

import time
import random

class Monster(pygame.sprite.Sprite):
    def __init__(self, x, y, size=32, dx=0, dy=0, img='./wolf.png'):
        pygame.sprite.Sprite.__init__(self)
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
        self.rect = pygame.Rect(x, y, size, size)
        image = pygame.image.load(img)
        self.image = pygame.transform.scale(image, (size, size))
        self.hit = False

    def move(self):
        self.x = self.x + self.dx
        self.y = self.y + self.dy
        self.rect.topleft = (self.x, self.y)

    @staticmethod
    def getRndDxDy(maxstep, minimal):
        dx = dy = 0
        while (abs(dx) + abs(dy) < minimal):
            dx = int(random.uniform(-maxstep, maxstep))
            dy = int(random.uniform(-maxstep, maxstep))
        return dx,dy

    @staticmethod
    def getRndInitXY(width, height):
        x = int(random.uniform(0, 1) * width)
        y = int(random.uniform(0, 1) * height)
        return x, y

    @staticmethod
    def buildWolf(width, height, maxstep):
        x, y = Monster.getRndInitXY(width, height)
        dx, dy = Monster.getRndDxDy(maxstep, 2)
        size = int(random.uniform(0, 1) * 30) + 30
        wolf = Monster(x, y, size, dx, dy, './wolf.png')
        wolf.lv = 1
        wolf.type = 'wolf'
        return wolf

    @staticmethod
    def buildTiger(width, height, maxstep):
        x, y = Monster.getRndInitXY(width, height)
        dx, dy = Monster.getRndDxDy(maxstep, 2)
        size = int(random.uniform(0, 1) * 70) + 70
        tiger = Monster(x, y, size, dx, dy, './small_tiger.jpg')
        tiger.lv = 2
        tiger.type = 'tiger'
        return tiger
        
class Tractor(Monster):
    def __init__(self, x, y, dx=0, dy=0, board_width=1200, board_height=900):
        pygame.sprite.Sprite.__init__(self)
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
        self.board_width = board_width
        self.board_height = board_height
        width = 180
        height = 240
        self.image_width = width
        self.image_height = height
        self.rect = pygame.Rect(x, y, width, height)
        image = pygame.image.load("./small_tractor.jpg")
        self.image = pygame.transform.rotate(image, 270)
        self.image = pygame.transform.scale(self.image, (width, height))
        self.lv = 3
        self.hit = False
        self.type = 'tractor'

    def move(self):
        if self.x < 0 and self.dx < 0:
            self.dx = - self.dx
        if self.y < 0 and self.dy < 0:
            self.dy = - self.dy
        if self.x + self.image_width > self.board_width and self.dx > 0:
            self.dx = - self.dx
        if self.y + self.image_height > self.board_height and self.dy > 0:
            self.dy = - self.dy
        self.x = self.x + self.dx
        self.y = self.y + self.dy
        self.rect.topleft = (self.x, self.y)

class PyGameSpiritsTestCase(TestCase):

    def setUp(self):
        pygame.init()
        pygame.mixer.init()
        self.width = 1200
        self.height = 900
        image = pygame.image.load("./galaxy.wiki.jpg")
        self.background = pygame.transform.scale(image, (self.width, self.height))
        screen_res = [self.width, self.height]
        self.screen = pygame.display.set_mode(screen_res)

    def spikeSprite(self):
        self.playBgm()
        pygame.display.set_caption("Galaxy Tractor")
        maxstep = 7

        sprites = pygame.sprite.Group()
        spirit_list = []
        x, y = Monster.getRndInitXY(self.width, self.height)
        dx, dy = Monster.getRndDxDy(maxstep * 2, 5)
        tractor = Tractor(x, y, dx, dy)
        sprites.add(tractor)
        spirit_list.append(tractor)
        finished = False
        while not finished:
            if int(random.uniform(0, 100)) <= 10:
                wolf = Monster.buildWolf(self.width, self.height, maxstep)
                sprites.add(wolf)
                spirit_list.append(wolf)
            if int(random.uniform(0, 100)) <= 3:
                tiger = Monster.buildTiger(self.width, self.height, maxstep)
                sprites.add(tiger)
                spirit_list.append(tiger)
            self.refreshBackground()
            sprites.draw(self.screen)
            pygame.display.update()
            for event in pygame.event.get():
                if event.type == QUIT:
                    finished = True
                elif event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_SPACE:
                        self.playDudu()
                    elif event.key == pygame.K_LEFT:
                        self.playWolf()
                    elif event.key == pygame.K_RIGHT:
                        self.playTiger()
            for monster in spirit_list:
                monster.move()
            self.collideDetection(spirit_list)
            time.sleep(0.1)
        pygame.quit()

    def collideDetection(self, spirit_list):
        n = len(spirit_list)
        for i in range(n-1):
            monster1 = spirit_list[i]
            for j in range(i+1, n):
                monster2 = spirit_list[j]
                self.collideDetectionAndUpdateMove(monster1, monster2)
                    
    def collideDetectionAndUpdateMove(self, monster1, monster2):
        if pygame.sprite.collide_rect(monster1, monster2):
            if monster2.lv < monster1.lv:
                monster1, monster2 = monster2, monster1
            if monster1.lv < monster2.lv:
                monster1.dx = (monster2.dx - monster1.dx) * 3
                maxSpeed = 1000
                if abs(monster1.dx) > maxSpeed:
                    monster1.dx = self.sign(monster1.dx) * maxSpeed
                monster1.dy = (monster2.dy - monster1.dy) * 3
                if abs(monster1.dy) > maxSpeed:
                    monster1.dy = self.sign(monster1.dy) * maxSpeed
                monster1.hit = True
                if monster1.type == 'wolf':
                    self.playWolf()
                elif monster1.type == 'tiger':
                    self.playTiger()

    def sign(self, x):
        if x == 0:
            return 1
        else:
            return x / abs(x)

    def refreshBackground(self):
        # self.screen.fill((0,0,0))
        self.screen.blit(self.background, (0, 0))

    def playDudu(self):
        self.playSoundEffect('./dudu.mp3', 0)

    def playWolf(self):
        channel = int(random.uniform(1, 5))
        self.playSoundEffect('./wolf.mp3', channel)

    def playTiger(self):
        channel = int(random.uniform(1, 5))
        self.playSoundEffect('./tiger.mp3', channel)

    def playSoundEffect(self, mp3file, channel=0):
        ## https://stackoverflow.com/questions/53617967/play-music-and-sound-effects-on-top-of-each-other-pygame
        pygame.mixer.Channel(channel).play(pygame.mixer.Sound(mp3file), maxtime=6000)

    def playBgm(self):
        pygame.mixer.music.load('./terran1.mp3')
        pygame.mixer.music.set_volume(0.3)
        pygame.mixer.music.play(loops=-1)  # loop forever

    
