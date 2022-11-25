def lfib =
    def lfibHelp(p:Int,n:Int):LazyList[Int] =
        LazyList.cons((p+n),lfibHelp(n,p+n))
    LazyList.cons(1,LazyList.cons(1,lfibHelp(1,1)))

lfib.take(15).toList