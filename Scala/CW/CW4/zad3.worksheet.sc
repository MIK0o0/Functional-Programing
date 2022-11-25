 
 
 sealed trait BT[+A]
 case object Empty extends BT[Nothing]
 case class Node[+A](elem: A, left: BT[A], right: BT[A]) extends BT[A]
 

  val t = Node(1, Node(2, Empty, Node(3, Empty, Empty)), Empty)
val tt = Node(1,Node(2,Node(4,Empty,Empty),Empty),Node(3,Node(5,Empty,Node(6,Empty,Empty)),Empty))

def value[A](bt:BT[A])= 
    bt match
        case Empty => Nil
        case Node(v,l,r) => List(v) 
    


def breadthBT[A](bt:BT[A]) = 
    def breadthHelp[A](bt:BT[A]):List[A] = 
        bt match
            case Empty => Nil
            case Node(v,l,r) => value(l) ::: value(r) ::: breadthHelp(l) ::: breadthHelp(r)

    tt.elem :: breadthHelp(bt)

breadthBT(tt) 
        