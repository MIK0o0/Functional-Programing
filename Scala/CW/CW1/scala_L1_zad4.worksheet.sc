def sqrList(xs: List[Int]): List[Int] ={
  if(xs != Nil){
    List(xs.head * xs.head) ::: sqrList(xs.tail)
  }else{
    List()
  }
}
sqrList(List(1,2,3,-4))