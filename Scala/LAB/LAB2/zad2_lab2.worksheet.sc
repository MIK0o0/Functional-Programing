def split2Rec[A](list:List[A]):(List[A],List[A])=
    list match
        case Nil => (Nil,Nil)
        case List(hd) => (List(hd),Nil)
        case hd1::hd2::tl =>
            val (x1,x2) = split2Rec(tl)
            (hd1::x1,hd2::x2)
split2Rec(List(1,2,3,4))
split2Rec(List(1,2,3,4,5))
split2Rec(Nil)

split2Rec(List(1,2,3))

split2Rec(List("1","2","3","4","5"))

split2Rec(List(1,2,3,4,5,6,7,7,13,8,9,0))

def split2Tail[A](list:List[A]) = 
    def split2TailHelp(list:List[A],listRet1:List[A],listRet2:List[A]):(List[A],List[A])=
        list match
            case Nil => (listRet1,listRet2)
            case List(hd) => split2TailHelp(Nil,hd::listRet1,listRet2)
            case hd1::hd2::tl => split2TailHelp(tl,hd1::listRet1,hd2::listRet2)

    split2TailHelp(list,Nil,Nil)

split2Tail(List(1,2,3,4))
split2Tail(List(1,2,3,4,5))
split2Tail(Nil)

split2Tail(List(1,2,3))

split2Tail(List("1","2","3","4","5"))

split2Tail(List(1,2,3,4,5,6,7,7,13,8,9,0))