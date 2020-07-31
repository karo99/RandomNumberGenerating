library(dqrng)
library(randtoolbox)
library(ggplot2)
library(snpar)
library(timeR)


#generuje trzy wektory za pomoca gen. Threefry
#1 - 1mln

th1 <- function(){
  
  timeArray = c()
  
  for(i in 1:100){
    
    dqRNGkind("Threefry")
    set.seed(Sys.time())
    
    timer <- createTimer(precision = "ms")
    timer$start("event")
    
    seq = round(dqrunif(1000000,0,1),2)
    
    timer$stop("event")
    
    time = timer$getTimeElapsed("event")
    timeArray <- c(timeArray, time)
  }
  
  print(round(mean(timeArray),5))
  
  # write.table(seq, "D:/SEMESTR IV/PRAKTYKI/CsvR/th1.csv", row.names=F, col.names=F, sep=",")
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  #serial.test(seq)
  
}
th1()


#2 - 10 mln

th2 <- function(){
  
  timeArray = c()
  
  for(i in 1:100){
    
    dqRNGkind("Threefry")
    set.seed(Sys.time())
    
    timer <- createTimer(precision = "ms")
    timer$start("event")
    
    seq1 = round(dqrunif(10000000,0,1),2)
    timer$stop("event")
    
    time = timer$getTimeElapsed("event")
    timeArray <- c(timeArray, time)

  }
  
  print(round(mean(timeArray),5))
  
  # 
  # for (i in 0:9){
  #   start = 0+i*1000000
  #   end = 1000000+i*1000000
  #   write.table(seq1[start:end], paste("D:/SEMESTR IV/PRAKTYKI/CsvR/th", i, ".csv", sep = ""), row.names=F, col.names=F, sep=",")
  # }
  
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  #serial.test(seq)
  
  
}
th2()

#3 - 100 mln

th3 <- function(){
  
  timeArray = c()
  
  for(i in 1:10){
    
    dqRNGkind("Threefry")
    set.seed(Sys.time())
    
    timer <- createTimer(precision = "ms")
    timer$start("event")
    
    seq2 = round(dqrunif(100000000,0,1),2)
    
    timer$stop("event")
    
    time = timer$getTimeElapsed("event")
    timeArray <- c(timeArray, time)

  }
  print(mean(timeArray))
 
  
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  #serial.test(seq)
  
  # for (i in 0:99){
  #   print(i)
  #   start = 0+i*1000000
  #   end = 1000000+i*1000000
  #   write.table(seq2[start:end], paste("D:/SEMESTR IV/PRAKTYKI/RandomNumberGenerating/Python/assets/csv100Th3/th", i, ".csv", sep = ""), row.names=F, col.names="seq", sep=",")
  # }
  
}
th3()



#generuje trzy wektory za pomoca gen. Mersenne-Twister
#1

mt1 <- function(){
  
  timeArray = c()
  
  for(i in 1:100){
    
    RNGkind("Mersenne-Twister")
    set.seed(Sys.time())
    
    timer <- createTimer(precision = "ms")
    timer$start("event")
    
    seq3 = round(runif(1000000,0,1),2)
    timer$stop("event")
    
    time = timer$getTimeElapsed("event")
    timeArray <- c(timeArray, time)

  }
  print(mean(timeArray))

  # 
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  # serial.test(seq)
  # 
  # write.table(seq3, "D:/SEMESTR IV/PRAKTYKI/CsvR/mt1.csv", row.names=F, col.names=F, sep=",")
}
mt1()

#2

mt2 <- function(){
  
  timeArray = c()
  
  for(i in 1:100){
    
    RNGkind("Mersenne-Twister")
    set.seed(Sys.time())
    
    timer <- createTimer(precision = "ms")
    timer$start("event")
    
    seq4 = round(runif(10000000,0,1),2)
    timer$stop("event")

    time = timer$getTimeElapsed("event")
    timeArray <- c(timeArray, time)

  }
  print(mean(timeArray))
  
  # 
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  # serial.test(seq)
  # 
  # for (i in 0:9){
  #   print(i)
  #   start = 0+i*1000000
  #   end = 1000000+i*1000000
  #   write.table(seq4[start:end], paste("D:/SEMESTR IV/PRAKTYKI/CsvR/mt", i, ".csv", sep = ""), row.names=F, col.names=F, sep=",")
  # }
}
mt2()

#3

mt3 <- function(){
  
  timeArray = c()
  
  for(i in 1:10){
    
    RNGkind("Mersenne-Twister")
    set.seed(Sys.time())
    
    timer <- createTimer(precision = "ms")
    timer$start("event")
    
    seq5 = round(runif(100000000,0,1),2)
    timer$stop("event")
    
    time = timer$getTimeElapsed("event")
    timeArray <- c(timeArray, time)

  }
  print(mean(timeArray))
 
#   
#   freq.test(seq)
#   order.test(seq,2)
#   gap.test(seq)
#   serial.test(seq)
#   
#   for (i in 0:94){
#     start = 0+i*1000000
#     end = 1000000+i*1000000
#     write.table(seq5[start:end], paste("D:/SEMESTR IV/PRAKTYKI/RandomNumberGenerating/Python/assets/csv100Mt3/mt", i, ".csv", sep = ""), row.names=F, col.names="seq", sep=",")
#   }
#   
 }
mt3()



#generuje trzy wektory za pomoca gen. Xoroshiro128+
#1

xor1 <- function(){
  
  timeArray = c()
  
  for(i in 1:100){
    
    dqRNGkind("Xoroshiro128+")
    set.seed(Sys.time())
    
    timer <- createTimer(precision = "ms")
    timer$start("event")
    
    seq6 = round(dqrunif(1000000,0,1),2)
    
    timer$stop("event")

    time = timer$getTimeElapsed("event")
    timeArray <- c(timeArray, time)

  }
  print(mean(timeArray))
  
  
  # write.table(seq6, "D:/SEMESTR IV/PRAKTYKI/CsvR/xor1.csv", row.names=F, col.names=F, sep=",")
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  # serial.test(seq)
  
}
xor1()

#2

xor2 <- function(){
  
  timeArray = c()
  
  for(i in 1:100){
    
    dqRNGkind("Xoroshiro128+")
    set.seed(Sys.time())
    
    timer <- createTimer(precision = "ms")
    timer$start("event")
    
    seq7 = round(dqrunif(10000000,0,1),2)
    
    timer$stop("event")

    time = timer$getTimeElapsed("event")
    timeArray <- c(timeArray, time)

  }
  print(mean(timeArray))
  
  # 
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  # serial.test(seq)
  # 
  # for (i in 0:9){
  #   print(i)
  #   start = 0+i*1000000
  #   end = 1000000+i*1000000
  #   write.table(seq7[start:end], paste("D:/SEMESTR IV/PRAKTYKI/CsvR/xor", i, ".csv", sep = ""), row.names=F, col.names=F, sep=",")
  # }
  # 
}
xor2()

#3

xor3 <- function(){
  
  timeArray = c()
  
  for(i in 1:10){
    
    dqRNGkind("Xoroshiro128+")
    set.seed(Sys.time())
    
    timer <- createTimer(precision = "ms")
    timer$start("event")
    
    seq8 = round(dqrunif(100000000,0,1),2)
    
    timer$stop("event")

    time = timer$getTimeElapsed("event")
    timeArray <- c(timeArray, time)

  }
  print(mean(timeArray))
  
  
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  # serial.test(seq)
  # 
  # for (i in 0:94){
  #   start = 0+i*1000000
  #   end = 1000000+i*1000000
  #   write.table(seq8[start:end], paste("D:/SEMESTR IV/PRAKTYKI/RandomNumberGenerating/Python/assets/csv100Xor3/xor", i, ".csv", sep = ""), row.names=F, col.names="seq", sep=",")
  # }
  
}
xor3()
