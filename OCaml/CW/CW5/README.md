1. Zdefiniuj funkcję lrepeat, która dla danej dodatniej liczby całkowitej k i listy leniwej
 [x0, x1, x 2, x 3, ... ] zwraca listę leniwą, w której każdy element jest powtórzony k razy, np.
 lrepeat 3 [x0, x1, x 2, x 3, ... ] => [x0, x0, x0, x1, x1, x1, x 2, x 2, x 2, x 3, x 3, x 3, ... ]
 Uwaga. Dla zwiększenia czytelności zastosowano tu notację dla zwykłych list.
 OCaml: lrepeat : int -> 'a llist -> 'a llist
 Scala: lrepeat[A](k: Int)(lxs: LazyList[A]): LazyList[A]
Np. lrepeat(3)(LazyList('a','b','c','d')).toList == List('a', 'a', 'a', 'b', 'b', 'b', 'c', 'c', 'c', 'd', 'd', 'd')
 lrepeat(3)(LazyList.from(1)).take(15).toList == List(1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5)
 lrepeat(3)(LazyList()).take(15).toList == List()
2. Zdefiniuj (w inny sposób, niż na wykładzie) ciąg liczb Fibonacciego.
 a) (OCaml) lfib : int llist
 b) (Scala) lfib : LazyList[Int]
3. Polimorficzne leniwe drzewa binarne można zdefiniować następująco:
OCaml: type 'a lBT = LEmpty | LNode of 'a * (unit ->'a lBT) * (unit -> 'a lBT);;
Scala:
 sealed trait lBT[+A]
 case object LEmpty extends lBT[Nothing]
 case class LNode[+A](elem: A, left: () => l BT[A], right: () => lBT[A]) extends lBT[A]
a) Napisz funkcję lBreadth, tworzącą leniwą listę, zawierającą wszystkie wartości węzłów leniwego
 drzewa binarnego.
 OCaml: lBreadth : 'a lBT -> 'a llist
 Scala: lBreadth[A](ltree: lBT[A]): LazyList[A]
 Wskazówka: zastosuj obejście drzewa wszerz, reprezentując kolejkę jako zwykłą listę.
b) Napisz funkcję lTree , która dla zadanej liczby naturalnej n konstruuje nieskończone leniwe
 drzewo binarne z korzeniem o wartości n i z dwoma poddrzewami lTree (2*n) oraz lTree( 2*n+1).
 To drzewo jest przydatne do testowania funkcji z podpunktu a).
 Np. lBreadth(lTree(1)).take(20).toList == List(1, 2
