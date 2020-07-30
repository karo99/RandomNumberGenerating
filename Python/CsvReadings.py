from os import listdir
import dask.dataframe as dd


class CsvReadings:
    myPath = ''
    seq = []

    def __init__(self, myPath):
        self.myPath = myPath
        self.readCsv()

    def readCsv(self):
        fileCounter = 0

        for file in listdir(self.myPath):
            fileCounter += 1
            tempDf = dd.read_csv(self.myPath + "/" + file)

            print(fileCounter)

            for i in tempDf['seq'].compute():
                if i < 0.5:
                    self.seq.append(0)

                else:
                    self.seq.append(1)

            del tempDf
