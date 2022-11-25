def swap2[A](list: List[A]):List[A]={
  if(list != Nil){
    if(list.tail != Nil) {
      list.tail.head :: list.head :: swap2(list.tail.tail)
    }else{
      list.head :: swap2(list.tail)
    }
  }else{
    Nil
  }
}
swap2(List(1,2,3,4,5,6))
swap2(List())
swap2(List(1,2,3,4,5))