
from unittest import TestCase

import pygame
from pygame.locals import *

import time
import random
import os

from game import Game

class TrainTestCase(TestCase):

    def setUp(self):
        pass

    def spikePlay(self):
        game = Game()
        game.play()
