1) Napisać operator >=< przyjmujący listę l oraz funkcję f i zwracającą listę postaci:
[f x1 x2; f x3 x4; f x5 x6; …]
Jeżeli lista zawiera niesparowany element zwrócić listę pustą. Kolejność elementów ma
znaczenie. Operator zdefiniować tak, aby można było używać go w „łańcuchu”
tzn. np. l >=< f >=< g >=< h, gdzie l – lista; f, g, h – funkcje.
Wykorzystując operator >=< napisać funkcję collapse, która wykonuje operację >=< do czasu,
aż lista nie będzie jednoelementowa lub, dla listy pustej, pusta. (OCaml) (20pkt.)
2) Napisać funkcję area przyjmującą parę liczb (a, b), funkcję f oraz liczbę podziałów n;
obliczającą pole powierzchni pod wykresem funkcji f na przedziale [a, b]. Implementację
oprzyj w całości na znanych Ci funkcjonałach dla list (wyjątek dla języka OCaml, gdzie
wygenerowanie ciągu liczb wymaga użycia rekurencji). Jako metodę obliczania wartości całki
oznaczonej zastosuj metodę Simpsona1
. Przy testach sprawdź podstawowe własności całek
oznaczonych. (OCaml i Scala) (30pkt.)

Modyfikacja:
1) Napisać funkcję reverse odwracającą kolejność elementów na liście. W implementacji
wykorzystać jedynie wbudowane funkcjonały – bez rekurencji. Oczywiście, wykorzystanie
wbudowanej funkcji reverse jest niedozwolone. (OCaml)
