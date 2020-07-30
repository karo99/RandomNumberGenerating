from XoroshiroGenerator import XoroshiroGenerator
from ThreeFryGenerator import ThreeFryGenerator
from MersenneTwisterGenerator import MersenneTwisterGenerator
import random
import time
import statistics

# czas generowania wektorow 1 milionowych
# 1

timeArrayXor1 = []

for i in range(100):
    xor1 = XoroshiroGenerator(None, 1000000)
    timeXor1 = xor1.getTime()
    random.seed(time.time())
    timeArrayXor1.append(timeXor1)

print("Mean Xor1 = ", round(statistics.mean(timeArrayXor1), 5))

# 2

timeArrayTf1 = []

for i in range(100):
    tf1 = ThreeFryGenerator(None, 1000000)
    timeTf1 = tf1.getTime()
    random.seed(time.time())
    timeArrayTf1.append(timeTf1)

print("Mean Tf1 = ", round(statistics.mean(timeArrayTf1), 5))

# 3

timeArrayMt1 = []

for i in range(100):
    mt1 = MersenneTwisterGenerator(None, 1000000)
    timeMt1 = mt1.getTime()
    random.seed(time.time())
    timeArrayMt1.append(timeMt1)

print("Mean Mt1 = ", round(statistics.mean(timeArrayMt1), 5))

# czas generowania wektorow 10 milionowych
# 1

timeArrayXor2 = []

for i in range(100):
    xor2 = XoroshiroGenerator(None, 10000000)
    timeXor2 = xor2.getTime()
    random.seed(time.time())
    timeArrayXor2.append(timeXor2)

print("Mean Xor2 = ", round(statistics.mean(timeArrayXor2), 5))

# 2

timeArrayTf2 = []

for i in range(100):
    tf2 = ThreeFryGenerator(None, 10000000)
    timeTf2 = tf2.getTime()
    random.seed(time.time())
    timeArrayTf2.append(timeTf2)

print("Mean Tf2 = ", round(statistics.mean(timeArrayTf2), 5))

# 3

timeArrayMt2 = []

for i in range(100):
    mt2 = MersenneTwisterGenerator(None, 10000000)
    timeMt2 = mt2.getTime()
    random.seed(time.time())
    timeArrayMt2.append(timeMt2)

print("Mean Mt2 = ", round(statistics.mean(timeArrayMt2), 5))


# czas generowania wektorow 100 milionowych
# 1

timeArrayXor3 = []

for i in range(10):
    xor3 = XoroshiroGenerator(None, 100000000)
    timeXor3 = xor3.getTime()
    random.seed(time.time())
    timeArrayXor3.append(timeXor3)
    del xor3

print("Mean Xor3 = ", round(statistics.mean(timeArrayXor3), 5))

# 2

timeArrayTf3 = []

for i in range(10):
    tf3 = ThreeFryGenerator(None, 100000000)
    timeTf3 = tf3.getTime()
    random.seed(time.time())
    timeArrayTf3.append(timeTf3)
    del tf3

print("Mean Tf3 = ", round(statistics.mean(timeArrayTf3), 5))

# 3

timeArrayMt3 = []

for i in range(10):
    mt3 = MersenneTwisterGenerator(None, 100000000)
    timeMt3 = mt3.getTime()
    random.seed(time.time())
    timeArrayMt3.append(timeMt3)
    del mt3

print("Mean Mt3 = ", round(statistics.mean(timeArrayMt3), 5))





