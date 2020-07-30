from numpy.random import Generator
from randomgen import MT19937
from timeit import default_timer as timer
from PIL import Image
import math


class MersenneTwisterGenerator:
    seq = 0
    time = 0
    seedValue = None
    vectorSize = 0

    def __init__(self, seedValue, vectorSize):
        self.seedValue = seedValue
        self.vectorSize = vectorSize
        self.generate()

    def generate(self):
        rg = Generator(MT19937(self.seedValue, mode="sequence"))
        start = timer()
        self.seq = rg.uniform(0, 1, self.vectorSize)
        end = timer()
        self.time = end - start

    def thresholding(self, value):
        if value > 0.5:
            return 1
        else:
            return 0

    def generateBitmap(self, name):
        dimension = int(math.sqrt(self.vectorSize))
        print(dimension)
        img = Image.new('1', (dimension, dimension), "black")
        pixels = img.load()
        for i in range(img.size[0]):
            for j in range(img.size[1]):
                pixels[i, j] = (self.thresholding(self.seq[j + i * dimension]))
        img.save("D:/SEMESTR IV/PRAKTYKI/BitmapyPython/" + name + ".bmp", format="bmp")

    def getResult(self):
        return self.seq, self.time

    def getSequence(self):
        return self.seq

    def getTime(self):
        return self.time

    def __del__(self):
        return
