def listLength[A](xs: List[A]): Int = {
  if(xs != Nil){
    1+listLength(xs.tail)
  }else{
    0
  }
}
listLength(List(1,2,3,4,5))