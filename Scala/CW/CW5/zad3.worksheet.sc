sealed trait lBT[+A]
 case object LEmpty extends lBT[Nothing]
 case class LNode[+A](elem: A, left: () => lBT[A], right: () => lBT[A]) extends lBT[A]

 def lBreadth[A](bt:lBT[A])=
    def breadthHelp[A](queue:List[lBT[A]]):LazyList[A] =
        queue match
            case Nil => LazyList()
            case LNode(v,l,r)::tl => LazyList.cons(v,breadthHelp(tl++List(l())++List(r())))
            case LEmpty::tl => breadthHelp(tl)
    breadthHelp(List(bt))

def iTree(n:Int):lBT[Int] = LNode(n,()=>iTree(2*n),()=>iTree((2*n)+1))

lBreadth(iTree(1)).take(20).toList