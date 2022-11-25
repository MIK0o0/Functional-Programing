Zdefiniuj funkcję skipTakeL, która dla danej listy leniwej zwraca nową listę leniwą zbudowaną
z drugiego elementu, elementu leżącego w odległości 2 od poprzedniego, z elementu
leżącego w odległości 4 od poprzedniego, w odległości 6 itd. (Scala) (20 pkt.)

Modyfikacja:
1) Dla list leniwych (LazyList) zdefiniuj funkcję layZip spinającą listę leniwą par kolejnych
elementów postaci: (Scala)

LazyList(x1, x2, x3, x4, x5, …) ---- layZip ----> LazyList((x1, x2), (x2, x3), (x3, x4), …)
