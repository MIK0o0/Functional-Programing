3. Dla drzew binarnych, zdefiniowanych na wykładzie, napisz funkcję breadthBT : 'a bt -> 'a list
 obchodzącą drzewo wszerz i zwracającą zawartość wszystkich węzłów drzewa w postaci listy. 
 4. W regularnym drzewie binarnym każdy z węzłów jest bądź liściem, bądź ma stopień dwa (patrz np.
 Cormen i in.). Zauważ, że drzewa ’a bt są drzewami regularnymi – traktujemy konstruktor
 Empty jako liść.
 Długość ścieżki wewnętrznej i regularnego drzewa binarnego jest sumą, po wszystkich węzłach
 wewnętrznych drzewa, głębokości każdego węzła. Długość ścieżki zewnętrznej e jest sumą, po
 wszystkich liściach drzewa, głębokości każdego liścia. Głębokość węzła definiujemy jako liczbę
 krawędzi od korzenia do tego węzła.
 Napisz dwie funkcje, obliczające odpowiednio
 a) długość ścieżki wewnętrznej
 b) długość ścieżki zewnętrznej
 zadanego regularnego drzewa binarnego.
 Zauważ, że dla regularnych drzew binarnych o n węzłach wewnętrznych zachodzi e = i + 2n, np. dla
 powyższego drzewa tt n = 6, i = 9, e = 21. Ta interesująca własność nie jest potrzebna w tym zadaniu.
5. Dla grafów, zdefiniowanych na wykładzie, napisz funkcję depthSearch : 'a graph -> 'a -> 'a list,
 obchodzącą graf w głąb zaczynając od zadanego wierzchołka i zwracającą zawartość
 zwizytowanych węzłów w postaci listy. Np. dla grafu g z wykładu:
 depthSearch g 4 = [4; 0; 3; 2; 1]
