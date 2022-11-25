def initSegment[A](a:List[A],b:List[A]):Boolean = 
    (a,b) match
        case(h1::t1,h2::t2) if h1!=h2 =>false
        case (h1::t1,h2::t2) =>initSegment(t1,t2)
        case (Nil,_) => true
        case (_,Nil) => false

initSegment(List(1,2,3),List(1,2,3,4,5))
    