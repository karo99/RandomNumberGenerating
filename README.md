# RandomNumberGenerating

### Konstrukcja wektorów - sekwencje liczb pseudolosowych

W Pythonie wektory skonstruowałam za pomocą trzech generatorów: Xoroshiro128+, Mersenne-Twister oraz ThreeFry. W tym celu utworzyłam trzy klasy, w których udostępniam metody dla każdego generatora. Dzięki temu w głównym skrypcie mogę dowolnie generować wektory o zadanej długości, kontrolować ich wartości, zapisywać do plików csv oraz generować mapy bitowe na ich podstawie.
Przegląd wszystkich funkcjonalności znajduje się w pliku `Python\FinalGenerating.py`.
W R generowanie wektorów wykonałam w jednym pliku `R\generating_random_numbers.R`.

### Testy statystyczne R

Analizę statystyczną w R umożliwiły mi testy dostępne w bibliotece randtoolbox. Dla każdego z wygenerowanych wektorów przeprowadziłam cztery testy: Frequency test, Order test, Gap test oraz Serial test, które umożliwiły mi sprawdzenie czy dana sekwencja została wygenerowana w sposób losowy. Wstępna analiza wyników tych testów na podstawie wartości p, pozwala przypuszczać, że sekwencje te nie zostały wygenerowane w sposób losowy. Na dowód tego przedstawię wyniki dotyczące testów dla wybranego generatora Xoroshiro128+. Wartości p dla innych testów prezentowały się podobnie.

<img src="https://user-images.githubusercontent.com/67383292/87986149-ff1e1980-cadc-11ea-800c-4285e5ac942c.png">
<img src="https://user-images.githubusercontent.com/67383292/87989228-ecf2aa00-cae1-11ea-8383-09af09f5aa00.png">
<img src="https://user-images.githubusercontent.com/67383292/87986157-004f4680-cadd-11ea-8a84-b4f106d3ba9c.png">
<img src="https://user-images.githubusercontent.com/67383292/87986142-fdecec80-cadc-11ea-999f-e93cf30e09c6.png">

### Testy statystyczne Python

Z powodu braku odpowiednich testów statystycznych w bibliotekach dostępnych w Pythonie, zdecydowałam się zapisać wygenerowane sekwencje z Pythona do plików csv, a następnie wykonanie ich analizy za pomocą tych samych testów z pakietu randtoolbox z R. Wyniki prezentowały się odmiennie niż w R - wstępna analiza na podstawie wartości p pozwala na przypuszczenie, że sekwencje te zostały wygenerowane w sposób losowy. Wykonałam wspomniane wyżej testy dla wektorów o długości 1 i 10 milionów i teraz przedstawię kilka z nich  dla różnych generatorów:

#### Gap test dla 1 milionowego wektora generowanego przez ThreeFry
<img src="https://user-images.githubusercontent.com/67383292/87986089-f0376700-cadc-11ea-888f-8094667de6d6.png">
#### Order test dla 1 milionowych wektorów dla trzech generatorów
<img src="https://user-images.githubusercontent.com/67383292/87986093-f1689400-cadc-11ea-9084-23da2c01f6c7.png">
#### Frequency test dla 10 milionowych wektorów dla trzech generatorów
<img src="https://user-images.githubusercontent.com/67383292/87986096-f2012a80-cadc-11ea-8ff5-5276f08bac22.png">
#### Serial test dla 10 milionowych wektorów dla trzech generatorów
<img src="https://user-images.githubusercontent.com/67383292/87986105-f3325780-cadc-11ea-8da1-2bd2f380d3b1.png">

