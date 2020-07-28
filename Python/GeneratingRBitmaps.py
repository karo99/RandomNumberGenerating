from PIL import Image
import math


class GeneratingRBitmaps:

    vectorSize = 94000000
    seq = []

    def __init__(self, name, seq):
        self.name = name
        self.seq = seq
        self.generateBitmap(name)

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
                pixels[i, j] = self.seq[j + i * dimension]
        img.save("D:/SEMESTR IV/PRAKTYKI/RandomNumberGenerating/R/BitmapyR/" + name + ".bmp", format="bmp")


