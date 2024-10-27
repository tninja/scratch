
import pygame
from pygame.locals import *

import time
import random
import os


class FlappyBird(pygame.sprite.Sprite):
    def __init__(self, screen_width, screen_height, color='blue', speed=2, height=60):
        pygame.sprite.Sprite.__init__(self)
        self.image_cache = {}
        self.dx = +1
        self.dy = 0
        self.frame = 0
        self.moveCount = 0
        self.speed = speed
        self.color = color
        self.name = color + ' bird'
        self.height = height
        self.warmCache()
        self.image = self.chooseImage()
        self.width, self.height = self.image.get_width(), self.image.get_height()
        self.x = round(random.uniform(screen_width // 10, screen_width - screen_width // 10))
        self.y = round(random.uniform(screen_height // 10, screen_height - screen_height // 10))
        self.rect = pygame.Rect(self.x, self.y, self.width, self.height)
        self.screen_width = screen_width
        self.screen_height = screen_height
        self.rcd = True

    def chooseImage(self):
        return self.imageCache[(self.frame, self.dx, self.dy)]

    def warmCache(self):
        self.imageCache = {}
        for frame in range(0, 4):
            image = self.loadAndResizeImageFile(frame)
            for dx in range(-1, 2):
                for dy in range(-1, 2):
                    if not (dx == 0 and dy == 0):
                        image_rotated = self.rotateImage(image, dx, dy)
                        self.imageCache[(frame, dx, dy)] = image_rotated

    def loadAndResizeImageFile(self, frame):
        imageFileList = ['bird-upflap.png', 'bird-midflap.png', 'bird-downflap.png', 'bird-midflap.png']
        assert frame >= 0 and frame < 4
        imageFile = self.color + imageFileList[frame]
        image = pygame.image.load(imageFile)
        resizedImage = DumpTruck.resizeImage(image, self.height)
        return resizedImage

    def rotateImage(self, image, dx, dy):
        degree = 0
        if dx == 0:
            if dy == 0:
                degree = 0
            elif dy > 0:
                degree = -90
            elif dy < 0:
                degree = 90
        elif dx > 0:
            if dy == 0:
                degree = 0
            elif dy > 0:
                degree = -45
            elif dy < 0:
                degree = 45
        else:
            image = pygame.transform.flip(image, True, False)
            if dy == 0:
                degree = 0
            elif dy > 0:
                degree = 45
            elif dy < 0:
                degree = -45
        rotatedImage = pygame.transform.rotate(image, degree)
        return rotatedImage

    def move(self):
        self.x = self.x + self.dx * self.speed
        if self.x > self.screen_width:
            self.x = - self.width
        elif self.x + self.width < 0:
            self.x = self.screen_width
        self.y = self.y + self.dy * self.speed
        if self.y > self.screen_height:
            self.y = - self.height
        elif self.y + self.height < 0:
            self.y = self.screen_height
        self.rect.topleft = (self.x, self.y)
        self.moveCount += 1
        if self.moveCount == 5:
            self.frame = (self.frame + 1) % 4
            self.image = self.chooseImage()
            self.moveCount = 0
        if self.rcd:
            self.randomChangeDirection()

    def randomChangeDirection(self, n=50):
        if int(random.uniform(0, n)) == 0:
            direction = ['up', 'down', 'left', 'right'][int(random.uniform(0, 4))]
            self.changeDirection(direction)

    def changeDirection(self, direction):
        if self.dy == 0:
            if direction == 'up':
                self.dy = -1
            elif direction == 'down':
                self.dy = 1
        elif self.dx == 0:
            if direction == 'left':
                self.dx = -1
            elif direction == 'right':
                self.dx = 1
        elif self.dx == -1 and self.dy == -1:
            if direction in ['left', 'down']:
                self.dy = 0
            else:
                self.dx = 0
        elif self.dx == -1 and self.dy == +1:
            if direction in ['left', 'up']:
                self.dy = 0
            else:
                self.dx = 0
        elif self.dx == 1 and self.dy == -1:
            if direction in ['left', 'up']:
                self.dx = 0
            else:
                self.dy = 0
        elif self.dx == 1 and self.dy == +1:
            if direction in ['left', 'down']:
                self.dx = 0
            else:
                self.dy = 0


class DumpTruck(pygame.sprite.Sprite):
    def __init__(self, screen_width, screen_height, height=160):
        pygame.sprite.Sprite.__init__(self)
        self.image_cache = {}
        self.dx = +1
        self.dy = +1
        self.speed = 1
        self.height = height
        self.warmCache()
        imageFile, flop = self.getImageFileAndFlop(self.dx, self.dy)
        print(imageFile, flop)
        self.image = self.loadAndResizeImageFile(imageFile, flop)
        self.width, self.height = self.image.get_width(), self.image.get_height()
        self.x = round(random.uniform(screen_width // 10, screen_width - screen_width // 10))
        self.y = round(random.uniform(screen_height // 10, screen_height - screen_height // 10))
        self.rect = pygame.Rect(self.x, self.y, self.width, self.height)
        self.screen_width = screen_width
        self.screen_height = screen_height
        self.rcd = False

    def getImageFileAndFlop(self, dx, dy):
        if dx < 0 and dy == 0:
            return ('./dump.truck.left.0.png', False)
        elif dx > 0 and dy == 0:
            return ('./dump.truck.left.0.png', True)
        elif dx == 0 and dy < 0:
            return ('./dump.truck.up.0.png', False)
        elif dx == 0 and dy > 0:
            return ('./dump.truck.down.0.png', False)
        elif dx < 0 and dy < 0:
            return ('./dump.truck.left.up.0.png', False)
        elif dx < 0 and dy > 0:
            return ('./dump.truck.left.down.0.png', False)
        elif dx > 0 and dy < 0:
            return ('./dump.truck.left.up.0.png', True)
        elif dx > 0 and dy > 0:
            return ('./dump.truck.left.down.0.png', True)

    def warmCache(self):
        for dx in range(-1, 2):
            for dy in range(-1, 2):
                if not (dx == 0 and dy == 0):
                    imageFile, flop = self.getImageFileAndFlop(dx, dy)
                    self.loadAndResizeImageFile(imageFile, flop)

    def loadAndResizeImageFile(self, imageFile, flop=False):
        key = (imageFile, flop)
        if key in self.image_cache:
            return self.image_cache[key]
        else:
            image = pygame.image.load(imageFile)
            self.originalImage = image
            if imageFile in ['./dump.truck.up.0.png', './dump.truck.down.0.png', './dump.truck.left.up.0.png', './dump.truck.left.down.0.png']:
                image = pygame.transform.rotate(image, -90)
            if imageFile == './dump.truck.left.0.png':
                image = self.resizeImage(image, self.height * 2 // 3)
            elif imageFile == './dump.truck.up.0.png':
                image = self.resizeImage(image, self.height * 3 // 4)
            else:
                image = self.resizeImage(image, self.height)
            if flop:
                image = pygame.transform.flip(image, True, False)
            self.image_cache[key] = image
            return image
    
    def move(self):
        self.x = self.x + self.dx * self.speed
        if self.x > self.screen_width:
            self.x = - self.width
        elif self.x + self.width < 0:
            self.x = self.screen_width
        self.y = self.y + self.dy * self.speed
        if self.y > self.screen_height:
            self.y = - self.height
        elif self.y + self.height < 0:
            self.y = self.screen_height
        shuffle_level = 5
        rnd_dx = int(random.uniform(0, shuffle_level))
        rnd_dy = int(random.uniform(0, shuffle_level))
        self.rect.topleft = (self.x + rnd_dx, self.y + rnd_dy)
        if self.rcd:
            self.randomChangeDirection()

    def randomChangeDirection(self, n=50):
        if int(random.uniform(0, n)) == 0:
            direction = ['up', 'down', 'left', 'right'][int(random.uniform(0, 4))]
            self.changeDirectionAndLoadImage(direction)

    def changeDirectionAndLoadImage(self, direction):
        old_dx, old_dy = self.dx, self.dy
        self.changeDirection(direction)
        if old_dx != self.dx or old_dy != self.dy:
            imageFile, flop = self.getImageFileAndFlop(self.dx, self.dy)
            print(imageFile, flop)
            self.image = self.loadAndResizeImageFile(imageFile, flop)

    def changeDirection(self, direction):
        if self.dy == 0:
            if direction == 'up':
                self.dy = -1
            elif direction == 'down':
                self.dy = 1
        elif self.dx == 0:
            if direction == 'left':
                self.dx = -1
            elif direction == 'right':
                self.dx = 1
        elif self.dx == -1 and self.dy == -1:
            if direction in ['left', 'down']:
                self.dy = 0
            else:
                self.dx = 0
        elif self.dx == -1 and self.dy == +1:
            if direction in ['left', 'up']:
                self.dy = 0
            else:
                self.dx = 0
        elif self.dx == 1 and self.dy == -1:
            if direction in ['left', 'up']:
                self.dx = 0
            else:
                self.dy = 0
        elif self.dx == 1 and self.dy == +1:
            if direction in ['left', 'down']:
                self.dx = 0
            else:
                self.dy = 0

    @staticmethod
    def resizeImage(image, height):
        assert height > 0
        original_height = image.get_height()
        scale_factor = height * 1.0 / original_height
        original_width = image.get_width()
        width = int(scale_factor * original_width)
        resizedImage = pygame.transform.scale(image, (width, height))
        return resizedImage

class KidDumpTruck(pygame.sprite.Sprite):
    def __init__(self, screen_width, screen_height, kidImgFile='./John.jpg', name="John", height=200, kidImageHeight=50):
        pygame.sprite.Sprite.__init__(self)
        self.dumpTruck = DumpTruck(screen_width, screen_height, height)
        image = pygame.image.load(kidImgFile)
        self.image = DumpTruck.resizeImage(image, kidImageHeight)
        self.image = pygame.transform.rotate(self.image, -90)
        self.width, self.height = self.image.get_width(), self.image.get_height()
        self.setPos()
        self.muffin = None
        self.name = name

    def rotateImage(self):
        self.image = pygame.transform.rotate(self.image, 90)

    def move(self):
        self.dumpTruck.move()
        self.setPos()

    def setPos(self):
        self.x = self.dumpTruck.x + self.dumpTruck.width * 1 // 4
        self.y = self.dumpTruck.y + self.dumpTruck.height * 1 // 5
        self.rect = pygame.Rect(self.x, self.y, self.width, self.height)

    def changeDirection(self, direction):
        self.dumpTruck.changeDirectionAndLoadImage(direction)

    def speedUp(self):
        if self.dumpTruck.speed < 3:
            self.dumpTruck.speed += 1

    def slowDown(self):
        if self.dumpTruck.speed > 1:
            self.dumpTruck.speed -= 1

    def hasMuffin(self):
        return self.muffin is not None

class Building(pygame.sprite.Sprite):
    def __init__(self, x, y, buildingImgFile='./home.icon.png', height=150, isHome=False):
        pygame.sprite.Sprite.__init__(self)
        image = pygame.image.load(buildingImgFile)
        self.image = DumpTruck.resizeImage(image, height)
        # self.image = pygame.transform.rotate(self.image, -90)
        self.width, self.height = self.image.get_width(), self.image.get_height()
        self.x, self.y = x, y
        self.rect = pygame.Rect(self.x, self.y, self.width, self.height)
        self.isHome = isHome
        self.muffin = None
        self.noMuffinClock = None

    def setMuffin(self, muffin):
        self.muffin = muffin

    def removeMuffin(self):
        self.muffin = None
        self.noMuffinClock = int(time.time())

    def checkAndRespawnMuffine(self):
        curTime = int(time.time())
        if self.noMuffinClock is not None:
            if curTime - self.noMuffinClock > 20:
                self.muffin = Muffin(self)
                self.noMuffinClock = None
                print('food respawned')
                return self.muffin
        return None

    def move(self):
        pass

class Friend(pygame.sprite.Sprite):
    def __init__(self, dumpTruck, kidImgFile='./John.jpg', kidImageHeight=50):
        pygame.sprite.Sprite.__init__(self)
        self.dumpTruck = dumpTruck
        image = pygame.image.load(kidImgFile)
        self.image = DumpTruck.resizeImage(image, kidImageHeight)
        self.width, self.height = self.image.get_width(), self.image.get_height()
        self.setPos()

    def rotateImage(self):
        self.image = pygame.transform.rotate(self.image, -90)

    def move(self):
        self.dumpTruck.move()
        self.setPos()

    def setPos(self):
        self.x = self.dumpTruck.x + self.dumpTruck.width * 1 // 4
        self.y = self.dumpTruck.y + self.dumpTruck.height * 1 // 5
        self.rect = pygame.Rect(self.x, self.y, self.width, self.height)

class Muffin(pygame.sprite.Sprite):
    def __init__(self, building, imgFile=None, height=100):
        pygame.sprite.Sprite.__init__(self)
        if imgFile is None:
            imgFile_list = ['./muffin.0.png', './fruitstand.0.png', './icecream.0.png', './hotdog_witheye.0.png']
            imgFile = random.choice(imgFile_list)
        foodName = self.extractFoodName(imgFile)
        self.foodName = foodName
        self.setHost(building)
        building.setMuffin(self)
        image = pygame.image.load(imgFile)
        self.image = DumpTruck.resizeImage(image, height)
        self.width, self.height = self.image.get_width(), self.image.get_height()
        self.setPos()

    @staticmethod
    def extractFoodName(imgFile):
        return imgFile.split('/')[-1].split('.')[0].split('_')[0]

    def move(self):
        self.setPos()

    def isInStore(self):
        return type(self.host) is Building and self.host.isHome == False

    def setPos(self):
        self.x, self.y = self.host.x + self.dx, self.host.y + self.dy
        self.rect = pygame.Rect(self.x, self.y, self.width, self.height)

    def setHost(self, host, dx=50, dy=50):
        self.host = host
        self.dx = dx
        self.dy = dy
