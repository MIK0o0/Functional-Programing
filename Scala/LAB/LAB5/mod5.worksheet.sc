def lazyZip[A](tab:LazyList[A]):LazyList[(A,A)] =
    tab match
        case h1#::h2#::tl => (h1,h2) #:: lazyZip(h2#::tl)
        case LazyList() => LazyList()

lazyZip(LazyList.from(1)).take(5).toList