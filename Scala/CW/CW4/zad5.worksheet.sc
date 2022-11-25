 sealed trait Graphs[A]
 case class Graph[A](succ: A=>List[A]) extends Graphs[A]
 

 val g = Graph((i: Int) =>
 i match
 case 0 => List(3)
 case 1 => List(0, 2, 4)
 case 2 => List(1)
 case 3 => Nil
 case 4 => List(0, 2)
 case n => throw new Exception(s"Graph g: node $n doesn't exist") )

 println(g succ(0))

 def depthSearch[A](gr: Graph[A], st: A):List[A] = 
    def searchHelp[A](gr:Graph[A],visited: List[A],queue:List[A]):List[A]=
         queue match
            case Nil => visited.reverse
            case h::t => if visited.contains(h) then searchHelp(gr,visited,t) else searchHelp(gr,h::visited,(gr succ(h)):::t )

    searchHelp(gr,List(st),gr succ(st))

depthSearch(g,4)
