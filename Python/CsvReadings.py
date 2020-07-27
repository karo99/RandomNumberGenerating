import pandas as pd
from os import listdir
from os.path import isfile, join

# odczyt wektorow jednomilionowych z R
#
# mt1 = pd.read_csv("D:/SEMESTR IV/PRAKTYKI/CsvR/csv1mln/mt1.csv", header=None)
# print(mt1.head())
#
# th1 = pd.read_csv("D:/SEMESTR IV/PRAKTYKI/CsvR/csv1mln/th1.csv", header=None)
# print(th1.head())
#
# xor1 = pd.read_csv("D:/SEMESTR IV/PRAKTYKI/CsvR/csv1mln/xor1.csv", header=None)
# print(xor1.head())


class CsvReadings:
    myPath = ''
    valuesSequence = []

    def __init__(self, myPath):
        self.myPath = myPath
        self.readCsv()

    def readCsv(self):

        # myPath = "D:/SEMESTR IV/PRAKTYKI/CsvR/csv10mln/mt2"
        #onlyFiles = [f for f in listdir(self.myPath) if isfile(join(self.myPath, f))]

        valuesArray = []
        fileCounter = 0

        for file in listdir(self.myPath):
            fileCounter += 1
            tempDf = pd.read_csv(self.myPath + "/" + file, header=None)
            tempDfValues = tempDf._get_values[:]
            # print(tempDfValues)
            valuesArray.append(tempDfValues)

        for i in range(0, fileCounter):
            print(i)
            for j in range(0, 1000000):
                self.valuesSequence.append(valuesArray[i][j][0])

