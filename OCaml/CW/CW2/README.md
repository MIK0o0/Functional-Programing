Poniższe funkcje należy napisać w obu językach: OCaml i Scala. W zadaniach 5 i 6
należy koniecznie wykorzystać mechanizm dopasowania do wzorca.
2. Liczby Fibonacciego są zdefiniowane następująco:
 f(0) = 0
 f(1) = 1
 f(n+2) = f(n) + f(n+1)
 Napisz dwie funkcje, które dla danego n znajdują n-tą liczbę Fibonacciego:
a) fib: int -> int (Scala: fib: Int => Int) opartą bezpośrednio na powyższej definicji,
b) fibTail: int -> int (Scala: fibTail: Int => Int) wykorzystującą rekursję ogonową.
 Porównaj (bez mierzenia) ich szybkość wykonania, obliczając np. 42-gą liczbę
 Fibonacciego.
3. Dla zadanej liczby rzeczywistej a oraz dokładności  można znaleźć pierwiastek
 trzeciego stopnia z a wyliczając kolejne przybliżenia xi tego pierwiastka
 (metoda Newtona-Raphsona):
 x0 = a/3 dla a > 1
 x0 = a dla a ≤ 1
 xi+1 = xi + (a/xi
2
– xi )/3
 Dokładność (względna) jest osiągnięta, jeśli |xi
3
– a|   * |a| .
 Napisz efektywną (wykorzystującą rekursję ogonową) funkcję root3: float -> float, która dla
 zadanej liczby a znajduje pierwiastek trzeciego stopnia z dokładnością 10-15
.
 Uwaga. Pamiętaj, że OCaml nie wykonuje automatycznie żadnych koercji typów.
 Scala: root3(a: Double): Double (metoda) i root3: Double => Double (funkcja)
 W Scali napisz metodę i funkcję.
4. Zwiąż zmienną x z wartością 0 konstruując wzorce, do których mają się dopasować
 następujące wyrażenia (jest wiele takich wzorców):
 a) [-2; -1; 0; 1; 2] b) [ (1,2); (0,1) ]
 Np. dla wyrażenia (true,"hello",0) wymaganym wzorcem jest (_ ,_ ,x).
 W OCamlu zignoruj ostrzeżenie “this pattern-matching is not exhaustive”.
5. Zdefiniuj funkcję initSegment : 'a list * 'a list -> bool sprawdzającą w czasie liniowym, czy
 pierwsza lista stanowi początkowy segment drugiej listy. Każda lista jest swoim
 początkowym segmentem, lista pusta jest początkowym segmentem każdej listy.
 Scala: initSegment[A](xs: List[A], ys: List[A]): Boolean
6. a) Zdefiniuj funkcję replaceNth : 'a list * int* 'a -> 'a list, zastępującą n-ty element listy
 podaną wartością (pierwszy element ma numer 0), np.
replaceNth(['o';'l';'a'; 'm'; 'a'; 'k'; 'o'; 't'; 'a'], 1, 's') => (['o';'s';'a'; 'm'; 'a'; 'k'; 'o'; 't'; 'a']
 Scala: replaceNth[A](xs: List[A], n: Int, x: A): List[A]
 Nie wykorzystuj żadnej funkcji bibliotecznej!
