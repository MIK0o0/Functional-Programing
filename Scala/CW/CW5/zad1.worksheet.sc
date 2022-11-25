val xs = LazyList.from(1)
xs.take(2).toList

def irepeat[A](k:Int,xs:LazyList[A])=
    def repeatHelp[A](n:Int,xs:LazyList[A]):LazyList[A]=
        (n,xs) match
            case (1,LazyList.cons(h,t)) => LazyList.cons(h,repeatHelp(k,t))
            case (_,LazyList.cons(h,t)) => LazyList.cons(h,repeatHelp(n-1,xs))
            case (_,LazyList()) => LazyList()
    repeatHelp(k,xs)

irepeat(3,LazyList.from(1)).take(15).toList