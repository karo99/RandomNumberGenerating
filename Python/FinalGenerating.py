from XoroshiroGenerator import XoroshiroGenerator
from ThreeFryGenerator import ThreeFryGenerator
from MersenneTwisterGenerator import MersenneTwisterGenerator
import pandas as pd


# generuje wektory o dlugosci 1 mln:

xor1 = XoroshiroGenerator(None, 1000000)
xor1.generateBitmap("xor1_bitmap")

tf1 = ThreeFryGenerator(None, 1000000)
tf1.generateBitmap("tf1_bitmap")

mt1 = MersenneTwisterGenerator(None, 1000000)
mt1.generateBitmap("mt1_bitmap")

print("xor1 = ", xor1.getResult())
print("tf1 = ", tf1.getResult())
print("mt1 = ", mt1.getResult())


vectorArrayXor1 = xor1.getSequence()
vectorArrayTf1 = tf1.getSequence()
vectorArrayMt1 = mt1.getSequence()

#df1 = pd.DataFrame(pd.DataFrame.from_dict({"xor1": vectorArrayXor1, "tf1": vectorArrayTf1, "mt1": vectorArrayMt1}))
#df1.to_csv("D:\SEMESTR IV\PRAKTYKI\dane1.csv", index=False)


del xor1
del tf1
del mt1

# generuje wektory o dlugosci 10 mln:

xor2 = XoroshiroGenerator(None, 10000000)
# xor2.generateBitmap("xor2_bitmap")
tf2 = ThreeFryGenerator(None, 10000000)
# tf2.generateBitmap("tf2_bitmap")
mt2 = MersenneTwisterGenerator(None, 10000000)
# mt2.generateBitmap("mt2_bitmap")


print("xor2 = ", xor2.getResult())
print("tf2 = ", tf2.getResult())
print("mt2 = ", mt2.getResult())


vectorArrayXor2 = xor2.getSequence()
vectorArrayTf2 = tf2.getSequence()
vectorArrayMt2 = mt2.getSequence()

for i in range(10):
    df2 = pd.DataFrame(pd.DataFrame.from_dict({"xor2": vectorArrayXor2[0+i*1000000:1000000+i*1000000],
                                               "tf2": vectorArrayTf2[0+i*1000000:1000000+i*1000000],
                                               "mt2": vectorArrayMt2[0+i*1000000:1000000+i*1000000]}))
    df2.to_csv("D:\SEMESTR IV\PRAKTYKI\dane2"+str(i)+".csv", index=False)

del xor2
del tf2
del mt2

# generuje wektory o dlugosci 100 mln:

xor3 = XoroshiroGenerator(None, 100000000)
xor3.generateBitmap("xor3_bitmap")
del xor3
tf3 = ThreeFryGenerator(None, 100000000)
tf3.generateBitmap("tf3_bitmap")
del tf3
mt3 = MersenneTwisterGenerator(None, 100000000)
mt3.generateBitmap("mt3_bitmap")
del mt3

# print("xor3 = ", xor3.getResult())
# print("tf3 = ", tf3.getResult())
# print("mt3 = ", mt3.getResult())

# vectorArrayXor3 = xor3.getSequence()
# vectorArrayTf3 = tf3.getSequence()
# vectorArrayMt3 = mt3.getSequence()


#df3 = pd.DataFrame.to_clipboard(pd.DataFrame({"xor3": vectorArrayXor3, "tf3": vectorArrayTf3,"mt3": vectorArrayMt3}))
#df3.to_csv("D:\SEMESTR IV\PRAKTYKI\dane3.csv", index=False)

