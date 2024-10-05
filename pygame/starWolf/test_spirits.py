
from unittest import TestCase
import pygame
from pygame.locals import *
from game import Game
from monsters import Monster, Tractor

class PyGameSpiritsTestCase(TestCase):
    """Test case for Pygame spirits."""

    def setUp(self):
        """Set up the Pygame environment for testing."""
        self.width = 1200
        self.height = 900
        self.game = Game(self.width, self.height)

    def test_spikeSprite(self):
        self.game.spikeSprite()
