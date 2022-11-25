def replaceNth[A](a:List[A],b:Int,c:A):List[A] = 
    (a,b) match
        case(Nil,_) => Nil
        case(h1::t1,0) => c::t1
        case (h1::t1,_) => h1::replaceNth(t1,(b-1),c)

replaceNth(List("o","l","a","m","a"),1,"s")
    