
from unittest import TestCase

import pygame
from pygame.locals import *

import time
import random

from monsters import Monster, Tractor

class PyGameSpiritsTestCase(TestCase):
    """Test case for Pygame spirits."""

    def setUp(self):
        pygame.init()
        pygame.mixer.init()
        self.width = 1200
        self.height = 900
        try:
            image = pygame.image.load("./galaxy.wiki.jpg")
        except pygame.error as e:
            raise FileNotFoundError(f"Image file not found: ./galaxy.wiki.jpg") from e
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
                self.update_movement(monster1, monster2)
                self.play_sound(monster1)

    def update_movement(self, monster1, monster2):
        maxSpeed = 1000
        monster1.dx = (monster2.dx - monster1.dx) * 3
        monster1.dx = self.clamp(monster1.dx, maxSpeed)
        monster1.dy = (monster2.dy - monster1.dy) * 3
        monster1.dy = self.clamp(monster1.dy, maxSpeed)
        monster1.hit = True

    def clamp(self, value, max_value):
        return max(-max_value, min(value, max_value))

    def play_sound(self, monster):
        if monster.type == 'wolf':
            self.playWolf()
        elif monster.type == 'tiger':
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

    
MAX_SPEED = 1000
MAX_STEP = 7
