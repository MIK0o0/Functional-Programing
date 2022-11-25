 sealed trait BT[+A]
 case object Empty extends BT[Nothing]
 case class Node[+A](elem: A, left: BT[A], right: BT[A]) extends BT[A]
 

  val t = Node(1, Node(2, Empty, Node(3, Empty, Empty)), Empty)
val tt = Node(1,Node(2,Node(4,Empty,Empty),Empty),Node(3,Node(5,Empty,Node(6,Empty,Empty)),Empty))

  def internalPath(bt: BT[Int]): Int = {
    def internal(n: BT[Int], res: Int, lvl: Int): Int =
      n match {
        case Empty => res
        case Node(v, l, r) => internal(l, internal(r, res + lvl, lvl + 1), lvl + 1)
      }
    internal(bt, 0, 0)
  }

  def externalPath(bt: BT[Int]) = {
    def extern(n: BT[Int], res: Int, lvl: Int): Int = {
      n match {
        case Empty => res + lvl
        case Node(v, l, r) => extern(l, extern (r,res, lvl+1), lvl+1)
      }
    }
    extern(bt, 0, 0)
  }
  internalPath(tt)
  externalPath(tt)
  