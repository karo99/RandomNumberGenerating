from matplotlib import pyplot as plt
import numpy as np

plt.style.use('ggplot')

# wykres dla wszystkich czasow z Pythona

labels = ["1", "10", "100"]
y1 = [0.03519, 0.3607, 3.59183]
y2 = [0.01186, 0.12121, 1.22619]
y3 = [0.01123, 0.11764, 1.17088]

x = np.arange(len(labels)) # labels location
width = 0.15

fig, ax = plt.subplots()
firstBar = ax.bar(x - (width/2), y1, width, label="ThreeFry Generator")
secondBar = ax.bar(x + width/2, y2, width, label="Mersenne - Twister Generator")
thirdBar = ax.bar(x + (width/2)*3, y3, width, label="Xoroshiro Generator")

plt.title("Zależność czasu generowania wektora w Python od jego długości dla poszczególnych algorytmów")
ax.set_ylabel("Czas generowania wektora [s]")
ax.set_xlabel("Długość wektora [mln]")
ax.set_xticks(x)
ax.set_xticklabels(labels)

ax.legend()
plt.show()


# wykres dla wszystkich czasow z R

labels = ["1", "10", "100"]
y1 = [0.05815, 0.48297, 4.9995]
y2 = [0.06476, 0.64219, 6.2235]
y3 = [0.04091, 0.40621, 3.974]

x = np.arange(len(labels))
width = 0.15


fig1, ax = plt.subplots()
firstBarR = ax.bar(x - (width/2), y1, width, label="ThreeFry Generator", color="g")
secondBarR = ax.bar(x + width/2, y2, width, label="Mersenne - Twister Generator", color="c")
thirdBarR = ax.bar(x + (width/2)*3, y3, width, label="Xoroshiro Generator", color="b")

plt.title("Zależność czasu generowania wektora w R od jego długości dla poszczególnych algorytmów")
ax.set_ylabel("Czas generowania wektora [s]")
ax.set_xlabel("Długość wektora [mln]")
ax.set_xticks(x)
ax.set_xticklabels(labels)

ax.legend()

plt.show()
