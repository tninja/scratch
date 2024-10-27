
import pygame
from pygame.locals import *

import time
import random
import os

from spirits import DumpTruck, KidDumpTruck, Building, Friend, Muffin, FlappyBird

class Game(object):
    def __init__(self, width=1400, height=1000):
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
        sprites = self.buildTrucksAndDrivers(sprites)
        sprites = self.buildLocations(sprites)
        sprites = self.buildBirds(sprites)
        muffin = Muffin(self.target)
        sprites.add(muffin)
        fruitstand = Muffin(self.wholefood, imgFile='./fruitstand.0.png')
        sprites.add(fruitstand)
        icecream = Muffin(self.odyssey, imgFile='./icecream.0.png')
        sprites.add(icecream)
        hotdog = Muffin(self.hotdog_shop, imgFile='./hotdog_witheye.0.png')
        sprites.add(hotdog)
        self.muffin_list = [muffin, fruitstand, icecream, hotdog]
        return sprites

    def buildBirds(self, sprites):
        bird = FlappyBird(self.width, self.height)
        self.bird = bird
        sprites.add(bird)
        bird2 = FlappyBird(self.width, self.height, color='red', speed=4, height=40)
        self.bird2 = bird2
        sprites.add(bird2)
        bird3 = FlappyBird(self.width, self.height, color='yellow', speed=3, height=50)
        self.bird3 = bird3
        sprites.add(bird3)
        self.birdList = [bird, bird2, bird3]
        return sprites

    def buildLocations(self, sprites):
        home = Building(900, 700, './home.icon.png', isHome=True)
        sprites.add(home)
        self.home = home
        odyssey = Building(750, 200, './preschool.icon.png')
        sprites.add(odyssey)
        self.odyssey = odyssey
        target = Building(350, 350, './grocery.shop.icon.jpg')
        sprites.add(target)
        self.target = target
        wholefood = Building(100, 800, './grocery.shop.icon.jpg')
        sprites.add(wholefood)
        self.wholefood = wholefood
        hotdog_shop = Building(1200, 200, './hotdog_shop.0.png')
        sprites.add(hotdog_shop)
        self.hotdog_shop = hotdog_shop
        self.shop_list = [odyssey, target, wholefood, hotdog_shop]
        return sprites

    def buildTrucksAndDrivers(self, sprites):
        friendsImg = ['Eian.jpg', 'Issac.jpg', 'Max.jpg']
        n = len(friendsImg)
        for i in range(n):
            dumpTruck = DumpTruck(self.width, self.height)
            dumpTruck.rcd = True
            sprites.add(dumpTruck)
            friendImgFilename = friendsImg[i]
            friend = Friend(dumpTruck, friendImgFilename)
            if not friendImgFilename.startswith('Luke'):
                friend.rotateImage()
            sprites.add(friend)
        johnDumpTruck = KidDumpTruck(self.width, self.height)
        sprites.add(johnDumpTruck.dumpTruck)
        sprites.add(johnDumpTruck)
        self.johnDumpTruck = johnDumpTruck
        lukeDumpTruck = KidDumpTruck(self.width, self.height,
                                     kidImgFile='./Luke.crop.jpg', name='Luke',
                                     kidImageHeight=70)
        lukeDumpTruck.rotateImage()
        sprites.add(lukeDumpTruck.dumpTruck)
        sprites.add(lukeDumpTruck)
        self.lukeDumpTruck = lukeDumpTruck
        return sprites

    def getBgImg(self):
        imgList = ['./foster.city.apple.map.png']
        ix = int(random.uniform(0, len(imgList)))
        return imgList[ix]

    def play(self):
        self.playBgm()
        pygame.display.set_caption("Dump truck")
        finished = False
        while not finished:
            for event in pygame.event.get():
                if event.type == QUIT:
                    finished = True
                elif event.type == pygame.KEYDOWN:
                    if event.key is not None:
                        if event.key == pygame.K_UP:
                            self.johnDumpTruck.changeDirection('up')
                        elif event.key == pygame.K_DOWN:
                            self.johnDumpTruck.changeDirection('down')
                        elif event.key == pygame.K_LEFT:
                            self.johnDumpTruck.changeDirection('left')
                        elif event.key == pygame.K_RIGHT:
                            self.johnDumpTruck.changeDirection('right')
                        elif event.key == pygame.K_SPACE:
                            self.playDudu()
                        elif event.key == pygame.K_EQUALS:
                            self.playDudu()
                            self.johnDumpTruck.speedUp()
                        elif event.key == pygame.K_MINUS:
                            self.playDudu()
                            self.johnDumpTruck.slowDown()
                        elif event.key == pygame.K_w:
                            self.lukeDumpTruck.changeDirection('up')
                        elif event.key == pygame.K_s:
                            self.lukeDumpTruck.changeDirection('down')
                        elif event.key == pygame.K_a:
                            self.lukeDumpTruck.changeDirection('left')
                        elif event.key == pygame.K_d:
                            self.lukeDumpTruck.changeDirection('right')
                        elif event.key == pygame.K_2:
                            self.playDudu()
                            self.lukeDumpTruck.speedUp()
                        elif event.key == pygame.K_1:
                            self.playDudu()
                            self.lukeDumpTruck.slowDown()
            self.draw()
            self.checkCollideAndUpdate()
            self.respawnMuffin(self.shop_list, self.muffin_list, self.sprites)
            self.moveSprites(self.sprites)
            time.sleep(0.02)

    def checkCollideAndUpdate(self):
        self.checkKidsTruckReachBuilding()
        self.checkBirdStealMuffin()

    def checkKidsTruckReachBuilding(self):
        if self.johnDumpTruck.hasMuffin():
            self.checkReturnMuffinHome(self.johnDumpTruck, self.home)
        else:
            self.checkGetMuffinFromStore(self.muffin_list, self.johnDumpTruck)

        if self.lukeDumpTruck.hasMuffin():
            self.checkReturnMuffinHome(self.lukeDumpTruck, self.home)
        else:
            self.checkGetMuffinFromStore(self.muffin_list, self.lukeDumpTruck)

    def checkBirdStealMuffin(self):
        for bird in self.birdList:
            self.checkBirdStealMuffinFromTruck(bird, self.johnDumpTruck)
            self.checkBirdStealMuffinFromTruck(bird, self.lukeDumpTruck)

    def checkBirdStealMuffinFromTruck(self, bird, kidDumpTruck):
        if kidDumpTruck.hasMuffin():
            if pygame.sprite.collide_rect(bird, kidDumpTruck):
                kidDumpTruck.muffin.setHost(bird)
                kidDumpTruck.muffin = None
                os.system('say "%s lost his muffin to %s." &' % (kidDumpTruck.name, bird.name))
                self.playBgm()

    def checkReturnMuffinHome(self, kidDumpTruck, home):
        if pygame.sprite.collide_rect(kidDumpTruck, home):
            dx = int(random.uniform(0, 150))
            dy = int(random.uniform(0, 150))
            kidDumpTruck.muffin.setHost(home, dx, dy)
            os.system('say "%s bring a %s home." &' % (kidDumpTruck.name, kidDumpTruck.muffin.foodName))
            kidDumpTruck.muffin = None
            self.playBgm()

    def checkGetMuffinFromStore(self, muffin_list, lukeDumpTruck):
        for muffin in muffin_list:
            if muffin.isInStore():
                if pygame.sprite.collide_rect(muffin, lukeDumpTruck):
                    muffin.host.removeMuffin()
                    muffin.setHost(lukeDumpTruck)
                    lukeDumpTruck.muffin = muffin
                    os.system('say "%s buy a %s and put to his truck." &' % (lukeDumpTruck.name, muffin.foodName))
                    self.playBgm('./The Muffin Man _ Kids Songs _ Super Simple Songs-fXFg5QsTcLQ.mp3')

    def respawnMuffin(self, shop_list, muffin_list, sprites):
        for shop in shop_list:
            if shop.muffin is None:
                newMuffin = shop.checkAndRespawnMuffine()
                if newMuffin is not None:
                    muffin_list.append(newMuffin)
                    sprites.add(newMuffin)
                    os.system('say "%s respawned." &' % newMuffin.foodName)

    def moveSprites(self, sprites):
        for sprite in sprites.sprites():
            sprite.move()

    def draw(self):
        self.screen.blit(self.background, (0, 0))
        self.sprites.draw(self.screen)
        pygame.display.update()

    def playBgm(self, mp3File='./Dump.Truck.Song.for.Kids.mp3'):
        pygame.mixer.music.load(mp3File)
        pygame.mixer.music.set_volume(0.7)
        pygame.mixer.music.play(loops=-1)  # loop forever

    def playDudu(self):
        self.playSoundEffect('./dudu.mp3', 0)

    def playSoundEffect(self, mp3file, channel=0):
        ## https://stackoverflow.com/questions/53617967/play-music-and-sound-effects-on-top-of-each-other-pygame
        pygame.mixer.Channel(channel).play(pygame.mixer.Sound(mp3file), maxtime=6000)
