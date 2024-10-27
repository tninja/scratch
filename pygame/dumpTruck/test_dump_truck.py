
from unittest import TestCase

import pygame
from pygame.locals import *

import time
import random
import os

from game import Game

from spirits import Muffin, KidDumpTruck, Building

class TrainTestCase(TestCase):

    def setUp(self):
        pass

    def spikePlay(self):
        game = Game()
        game.play()

    def testCheckType(self):
        johnDumpTruck = KidDumpTruck(1000, 700)
        muffin = Muffin(johnDumpTruck)
        print(type(muffin))
        self.assertTrue(type(muffin) is Muffin)
        self.assertTrue(type(johnDumpTruck) is KidDumpTruck)

    def testIsInStore(self):
        johnDumpTruck = KidDumpTruck(1000, 700)
        muffin = Muffin(johnDumpTruck)
        self.assertFalse(muffin.isInStore())
        home = Building(50, 50, isHome=True)
        muffin.setHost(home)
        self.assertFalse(muffin.isInStore())
        store = Building(550, 550, isHome=False)
        muffin.setHost(store)
        self.assertTrue(muffin.isInStore())

    def testTime(self):
        print(int(time.time()))

    def testRandomChoose(self):
        imgFile_list = ['./muffin.0.png', './fruitstand.0.png', './icecream.0.png', './hotdog_witheye.0.png']
        print(random.choice(imgFile_list))

    def testExtractFoodName(self):
        self.assertEqual('icecream', Muffin.extractFoodName('./icecream.0.png'))
        self.assertEqual('hotdog', Muffin.extractFoodName('./hotdog_witheye.0.png'))
