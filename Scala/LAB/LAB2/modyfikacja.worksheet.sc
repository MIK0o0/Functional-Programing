def substitiute[A](list:List[A])(fst:A)(scd:A):List[A] =
    list match
        case Nil => Nil 
        case hd :: tl  if hd == fst => scd::substitiute(tl)(fst)(scd)
        case hd :: tl => hd::substitiute(tl)(fst)(scd)

substitiute(List(1,2,3,4,2,4,2))(2)(999)
substitiute(Nil)(9)(8)
substitiute(List(1,2,3,4))(7)(8)
substitiute(List("1","2","3"))("3")("Działa")
substitiute(List(1))(1)(2)
substitiute(List(1))(9)(2)

