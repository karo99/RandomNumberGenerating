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

