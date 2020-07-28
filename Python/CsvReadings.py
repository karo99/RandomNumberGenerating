import pandas as pd
import numpy as np
from os import listdir
import dask.dataframe as dd


class CsvReadings:
    myPath = ''
    seq = []

    def __init__(self, myPath):
        self.myPath = myPath
        self.readCsv()

    def readCsv(self):

        # myPath = "D:/SEMESTR IV/PRAKTYKI/CsvR/csv10mln/mt2"
        #onlyFiles = [f for f in listdir(self.myPath) if isfile(join(self.myPath, f))]

        valuesArray = []
        fileCounter = 0

        # for file in listdir(self.myPath):
        #     fileCounter += 1
        #     tempDf = pd.read_csv(self.myPath + "/" + file, header=None, low_memory=False, dtype={"x": np.dtype(float)})
        #     tempDfValues = tempDf._get_values[:]
        #     del tempDf
        #     print(fileCounter)
        #     for i in range(0, len(tempDfValues)):
        #         self.valuesSequence.append(tempDfValues[i][0])
        #     del tempDfValues


        # for i in range(0, fileCounter):
        #     print(i)
        #     for j in range(0, 100000):
        #         self.valuesSequence.append(valuesArray[i][j][0])
        #
        # print(len(self.valuesSequence))

        counter = 0
        for file in listdir(self.myPath):
            fileCounter += 1
            tempDf = dd.read_csv(self.myPath + "/" + file)
            # pd.options.display.precision = 3
            # pd.options.display.max_rows = 3
            # print(tempDf)
            # gc.set_debug(gc.DEBUG_STATS)
            # gc.collect(2)

            print(fileCounter)

            for i in tempDf['seq'].compute():

                # print(type(i))

                #

                if i < 0.5:
                    self.seq.append(0)

                else:
                    self.seq.append(1)

                # if i < 0.5
                #     seq.append(False)
                # else:
                #     seq.append(True)

            # print(len(self.seq))
            del tempDf

            # print(computedDf)computedDf

        # fullDf = dd.concat(fullDf, tempDl)
        # print(fullDf)
        # tempDa = dd.to_records(tempDf)
        # print(tempDa)
        # bb = dd.compute(tempDa)
        # print(bb)

        # for i in range(0, len(tempDf)):
        #     self.valuesSequence.append(tempDf[i])
        # del tempDf


