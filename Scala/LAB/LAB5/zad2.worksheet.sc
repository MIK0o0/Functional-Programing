def skipTakeL[A](xs:LazyList[A]):LazyList[A] =
    def skipHelp[A](xs:LazyList[A],k:Int,n:Int,x:Int):LazyList[A] =
         (n,xs) match
            case (i,LazyList.cons(h,t)) => if i==k then LazyList.cons(h,skipHelp(t,k+(x*2),n+1,x+1)) else skipHelp(t,k,n+1,x) 
            case(_,LazyList()) => LazyList()
    skipHelp(xs,2,1,1)

skipTakeL(LazyList.from(1)).take(10).toList
         