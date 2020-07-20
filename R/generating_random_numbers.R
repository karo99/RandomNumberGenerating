library(dqrng)
library(randtoolbox)
library(ggplot2)
library(snpar)
library(timeR)


#generuje trzy wektory za pomoca gen. Threefry
#1 - 1mln

th1 <- function(){
  
  dqRNGkind("Threefry")
  #dqset.seed(0)
  
  timer <- createTimer(precision = "ms")
  timer$start("event")
  
  seq = round(dqrunif(1000000,0,1),2)
  
  timer$stop("event")
  table1 <- getTimer(timer)
  table1
  
  timer$getTimeElapsed("event")
  timer$getEvent("event")
  
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  #serial.test(seq)
  
}
th1()


#2 - 10 mln

th2 <- function(){
  dqRNGkind("Threefry")
  #dqset.seed(0)
  
  timer <- createTimer(precision = "ms")
  timer$start("event")
  
  seq = round(dqrunif(10000000,0,1),2)
  
  timer$stop("event")
  table1 <- getTimer(timer)
  table1
  
  timer$getTimeElapsed("event")
  timer$getEvent("event")
  
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  #serial.test(seq)
  
  
}
th2()

#3 - 100 mln

th3 <- function(){
  dqRNGkind("Threefry")
  #dqset.seed(0)
  
  timer <- createTimer(precision = "ms")
  timer$start("event")
  
  seq = round(dqrunif(100000000,0,1),2)
  
  timer$stop("event")
  table1 <- getTimer(timer)
  table1
  
  timer$getTimeElapsed("event")
  timer$getEvent("event")
  
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  #serial.test(seq)
  
  
}
th3()



#generuje trzy wektory za pomoca gen. Mersenne-Twister
#1

mt1 <- function(){
  RNGkind("Mersenne-Twister")
  #set.seed(100)
  
  timer <- createTimer(precision = "ms")
  timer$start("event")
  
  seq = round(runif(1000000,0,1),2)
  timer$stop("event")
  table1 <- getTimer(timer)
  table1
  
  timer$getTimeElapsed("event")
  timer$getEvent("event")
  
  freq.test(seq)
  order.test(seq,2)
  gap.test(seq)
  serial.test(seq)
  
}
mt1()

#2

mt2 <- function(){
  RNGkind("Mersenne-Twister")
  #set.seed(100)
  
  timer <- createTimer(precision = "ms")
  timer$start("event")
  
  seq = round(runif(10000000,0,1),2)
  timer$stop("event")
  table1 <- getTimer(timer)
  table1
  
  timer$getTimeElapsed("event")
  timer$getEvent("event")
  
  freq.test(seq)
  order.test(seq,2)
  gap.test(seq)
  serial.test(seq)
  
}
mt2()

#3

mt3 <- function(){
  RNGkind("Mersenne-Twister")
  #set.seed(100)
  
  timer <- createTimer(precision = "ms")
  timer$start("event")
  
  seq = round(runif(100000000,0,1),2)
  timer$stop("event")
  table1 <- getTimer(timer)
  table1
  
  timer$getTimeElapsed("event")
  timer$getEvent("event")
  
  freq.test(seq)
  order.test(seq,2)
  gap.test(seq)
  serial.test(seq)
  
}
mt3()



#generuje trzy wektory za pomoca gen. Xoroshiro128+
#1

xor1 <- function(){
  dqRNGkind("Xoroshiro128+")
  #dqset.seed(100)
  
  timer <- createTimer(precision = "ms")
  timer$start("event")
  
  seq = round(dqrunif(1000000,0,1),2)
  
  timer$stop("event")
  table1 <- getTimer(timer)
  table1
  timer$getTimeElapsed("event")
  timer$getEvent("event")
  
  # freq.test(seq)
  # order.test(seq,2)
  # gap.test(seq)
  # serial.test(seq)
  
}
xor1()

#2

xor2 <- function(){
  dqRNGkind("Xoroshiro128+")
  #dqset.seed(100)
  
  timer <- createTimer(precision = "ms")
  timer$start("event")
  
  seq = round(dqrunif(10000000,0,1),2)
  
  timer$stop("event")
  table1 <- getTimer(timer)
  table1
  timer$getTimeElapsed("event")
  timer$getEvent("event")
  
  freq.test(seq)
  order.test(seq,2)
  gap.test(seq)
  serial.test(seq)
  
}
xor2()

#3

xor3 <- function(){
  dqRNGkind("Xoroshiro128+")
  #dqset.seed(100)
  
  timer <- createTimer(precision = "ms")
  timer$start("event")
  
  seq = round(dqrunif(100000000,0,1),2)

  timer$stop("event")
  table1 <- getTimer(timer)
  table1
  timer$getTimeElapsed("event")
  timer$getEvent("event")
  
  freq.test(seq)
  order.test(seq,2)
  gap.test(seq)
  serial.test(seq)
  
}
xor3()
