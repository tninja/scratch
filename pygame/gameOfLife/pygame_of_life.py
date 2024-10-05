
from game_of_life import GameOfLife

import pygame
from pygame.locals import *

class Cell(pygame.sprite.Sprite):
    def __init__(self, x, y, size=20, color=(0, 168, 0)):
        # super().__init__(self)
        pygame.sprite.Sprite.__init__(self)
        self.x = x
        self.y = y
        self.image = pygame.Surface([size, size])
        self.image.fill(color)
        self.rect = self.image.get_rect()
        self.rect.topleft = (x * size, y * size)

class PyGameOfLife(object):
    def __init__(self, board, cellSize=20, caption='PyGame of life'):
        self.board = board
        self.gol = GameOfLife()
        self.cellSize = cellSize
        self.caption = caption

    @staticmethod
    def startWithRandomBoard(width, height, lifeProb):
        gol = GameOfLife()
        board = gol.generateRandomBoard(width, height, lifeProb)
        return PyGameOfLife(board)

    def buildCellList(self, board, color=None):
        cellList = []
        height, width = self.gol.getDim(board)
        for y in range(height):
            for x in range(width):
                lifeValue = board[y][x]
                if lifeValue == 1:
                    if color is None:
                        cell = Cell(x, y, self.cellSize)
                    else:
                        cell = Cell(x, y, self.cellSize, color=color)
                    cellList.append(cell)
        return cellList

    def initSpirites(self, board):
        sprites = pygame.sprite.Group()
        cellList = self.buildCellList(board)
        for cell in cellList:
            sprites.add(cell)
        return sprites, cellList

    def initPyGameAndGetScreen(self):
        pygame.init()
        pygame.display.set_caption(self.caption)
        height, width = self.gol.getDim(self.board)
        screen_res = [width * self.cellSize, height * self.cellSize]
        screen = pygame.display.set_mode(screen_res)
        return screen

    def updateSpritesWithNextRoundAndJustDead(self, board, sprites, cellList):
        nextBoard = self.gol.getNextRound(board)
        justDeadCellBoard = self.getJustDeadCellBoard(board, nextBoard)
        nextCellList = self.buildCellList(nextBoard)
        justDeadCellList = self.buildCellList(justDeadCellBoard, color=(64, 0, 0))
        for cell in cellList:
            sprites.remove(cell)
        print("removed %i old cells" % len(cellList))
        for cell in nextCellList:
            sprites.add(cell)
        print("added %i live cells" % len(nextCellList))
        for cell in justDeadCellList:
            sprites.add(cell)
        print("added %i just dead cells" % len(justDeadCellList))
        totalCellList = nextCellList.copy()
        totalCellList.extend(justDeadCellList)
        return nextBoard, sprites, totalCellList

    def getJustDeadCellBoard(self, board, nextBoard):
        height, width = self.gol.getDim(board)
        justDeadBoard = self.gol.buildZeroBoard(height, width)
        for y in range(height):
            for x in range(width):
                if board[y][x] == 1 and nextBoard[y][x] == 0:
                    justDeadBoard[y][x] = 1
        return justDeadBoard

    def updateSpritesWithNextRound(self, board, sprites, cellList):
        nextBoard = self.gol.getNextRound(board)
        nextCellList = self.buildCellList(nextBoard)
        for cell in cellList:
            sprites.remove(cell)
        for cell in nextCellList:
            sprites.add(cell)
        return nextBoard, sprites, nextCellList

    def clearScreenAndPlot(self, screen, sprites):
        screen.fill((0,0,0))
        pygame.display.flip()
        # pygame.display.update()
        sprites.draw(screen)
        pygame.display.update()

    def play(self):
        board = self.board
        screen = self.initPyGameAndGetScreen()
        sprites, cellList = self.initSpirites(board)
        sprites.draw(screen)
        finished = False
        import time
        while not finished:
            print("==========")
            self.gol.printBoard(board)
            for event in pygame.event.get():
                if event.type == QUIT:
                    finished = True
            time.sleep(1)
            board, sprites, cellList = self.updateSpritesWithNextRoundAndJustDead(board, sprites, cellList)
            self.clearScreenAndPlot(screen, sprites)
            if len(cellList) == 0:
                finished = True
        pygame.quit()
        
