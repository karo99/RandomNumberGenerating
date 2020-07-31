library(data.table)
library(plyr)
library(randtoolbox)


df1 = fread("D:/SEMESTR IV/PRAKTYKI/dane1.csv")

setwd("D:/SEMESTR IV/PRAKTYKI/csvFiles10mln")
fileList = list.files(path = "D:/SEMESTR IV/PRAKTYKI/csvFiles10mln")

dataset = data.frame()

for (i in 1:length(fileList)){
  tempDf = fread(fileList[i])
  dataset = rbind(dataset, tempDf)
}

# odczyt 100 mln wektorow z csv

setwd("D:/SEMESTR IV/PRAKTYKI/csvFilesXor3")
fileList = list.files(path = "D:/SEMESTR IV/PRAKTYKI/csvFilesXor3")

dataset1 = data.frame()

for (i in 1:length(fileList)){
  tempDf = fread(fileList[i])
  dataset1 = rbind(dataset1, tempDf)
}

setwd("D:/SEMESTR IV/PRAKTYKI/csvFilesTf3")
fileList = list.files(path = "D:/SEMESTR IV/PRAKTYKI/csvFilesTf3")

dataset2 = data.frame()

for (i in 1:length(fileList)){
  tempDf = fread(fileList[i])
  dataset2 = rbind(dataset2, tempDf)
}

setwd("D:/SEMESTR IV/PRAKTYKI/csvFilesMt3")
fileList = list.files(path = "D:/SEMESTR IV/PRAKTYKI/csvFilesMt3")

dataset3 = data.frame()

for (i in 1:length(fileList)){
  tempDf = fread(fileList[i])
  dataset3 = rbind(dataset3, tempDf)
}


#testy dla 1 mln wektorow

freq.test(df1$xor1)
freq.test(df1$tf1)
freq.test(df1$mt1)

order.test(df1$xor1, 2)
order.test(df1$tf1, 2)
order.test(df1$mt1, 2)


gap.test(df1$xor1)
gap.test(df1$tf1)
gap.test(df1$mt1)


serial.test(df1$xor1)
serial.test(df1$tf1)
serial.test(df1$mt1)

#testy dla 10 mln wektorow

freq.test(dataset$xor2)
freq.test(dataset$tf2)
freq.test(dataset$mt2)

order.test(dataset$xor2, 2)
order.test(dataset$tf2, 2)
order.test(dataset$mt2, 2)


gap.test(dataset$xor2)
gap.test(dataset$tf2)
gap.test(dataset$mt2)


serial.test(dataset$xor2)
serial.test(dataset$tf2)
serial.test(dataset$mt2)

#testy dla 100 mln wektorow

freq.test(dataset1$xor3)
freq.test(dataset2$tf3)
freq.test(dataset3$mt3)

order.test(dataset1$xor3, 2)
order.test(dataset2$tf3, 2)
order.test(dataset3$mt3, 2)


gap.test(dataset1$xor3)
gap.test(dataset2$tf3)
gap.test(dataset3$mt3)


serial.test(dataset1$xor3)
serial.test(dataset2$tf3)
serial.test(dataset3$mt3)

