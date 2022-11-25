def flatten1[A] (xxs:List[List[A]]): List[A] = {
  if(xxs !=  Nil){
      xxs.head ::: flatten1(xxs.tail)
  }else{
    Nil
  }
}

flatten1 (List(List("1","2"),List("3","4","5"),List("6","7")))