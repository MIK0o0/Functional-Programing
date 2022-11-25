
1. Podaj (i uzasadnij!) najogólniejsze typy poniższych funkcji (samodzielnie, bez pomocy kompilatora
OCamla!) :
 a) let f1 x = x 2 2;; b) let f2 x y z = x ( y ^ z );;
2. Zdefiniuj funkcje a) curry3 i b) uncurry3, przeprowadzające konwersję między zwiniętymi i rozwiniętymi
 postaciami funkcji od trzech argumentów. Podaj (i uzasadnij!) ich typy.
 Dla każdej funkcji napisz dwie wersje: z lukrem syntaktycznym i bez lukru syntaktycznego.
3. Przekształć poniższą rekurencyjną definicję funkcji sumProd, która oblicza jednocześnie
 sumę i iloczyn listy liczb całkowitych na równoważną definicję nierekurencyjną z
 jednokrotnym użyciem funkcji bibliotecznej fold_left (Scala – foldLeft), której argumentem jest
 odpowiednia funkcja anonimowa (literał funkcyjny).
 OCaml Scala
let rec sumProd xs = def sumProd(xs: List[Int]): (Int,Int) =
match xs with xs match
 h::t -> let (s,p)= sumProd t case h::t => { val (s,p)=sumProd(t)
 in (h+s,h*p) (h+s,h*p)
 | [] -> (0,1);; }
 case Nil => (0,1)

5. Zdefiniuj funkcje sortowania
a) przez wstawianie z zachowaniem stabilności i złożoności O(n
2
)
 insertionsort : (‘a->‘a->bool) -> ‘a list -> ‘a list .
b) przez łączenie (scalanie) z zachowaniem stabilności i złożoności O(n lg n)
 mergesort : (‘a->‘a->bool) -> ‘a list -> ‘a list .
Pierwszy argument jest funkcją, sprawdzającą porządek. Podaj przykład testu sprawdzającego
stabilność.
