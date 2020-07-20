# RandomNumberGenerating

### Konstrukcja wektorów - sekwencje liczb pseudolosowych

W Pythonie wektory skonstruowałam za pomocą trzech generatorów: Xoroshiro128+, Mersenne-Twister oraz ThreeFry. W tym celu utworzyłam trzy klasy, w których udostępniam metody dla każdego generatora. Dzięki temu w głównym skrypcie mogę dowolnie generować wektory o zadanej długości, kontrolować ich wartości, zapisywać do plików csv oraz generować mapy bitowe na ich podstawie.
Przegląd wszystkich funkcjonalności znajduje się w pliku `Python\FinalGenerating.py`.
W R generowanie wektorów wykonałam w jednym pliku `R\generating_random_numbers.R`.

<img src="https://user-images.githubusercontent.com/67383292/87986089-f0376700-cadc-11ea-888f-8094667de6d6.png">
<img src="">


### Testy statystyczne R

Analizę statystyczną w R umożliwiły mi testy dostępne w bibliotece randtoolbox. Dla każdego z wygenerowanych wektorów przeprowadziłam cztery testy: Frequency test, Order test, Gap test oraz Serial test, które umożliwiły mi sprawdzenie czy dana sekwencja została wygenerowana w sposób losowy. Wstępna analiza wyników tych testów na podstawie wartości p, pozwala przypuszczać, że sekwencje te nie zostały wygenerowane w sposób losowy. Na dowód tego przedstawię wyniki dotyczące testów dla wybranego generatora Xoroshiro128+:
<img src="https://user-images.githubusercontent.com/67383292/87986149-ff1e1980-cadc-11ea-800c-4285e5ac942c.png">
<img src="https://user-images.githubusercontent.com/67383292/87986144-fe858300-cadc-11ea-8a01-82d6bf918e3f.png">
<img src="https://user-images.githubusercontent.com/67383292/87986157-004f4680-cadd-11ea-8a84-b4f106d3ba9c.png">
<img src="https://user-images.githubusercontent.com/67383292/87986142-fdecec80-cadc-11ea-999f-e93cf30e09c6.png">

### Testy statystyczne Python

