def count[A ] (x: A, xs: List[A]): Int = {
  if(xs != Nil){
    if(xs.head == x){
      1 + count(x,xs.tail)
    }else{
      count(x,xs.tail)
    }
  }else{
    return 0;
  }
}

count("a",List("a","b","c","a","l"))