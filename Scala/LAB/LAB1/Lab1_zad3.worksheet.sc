def substitute[A](xs:List[A],a:A,b:A): List[A] ={
  if(xs != Nil){
    if(xs.head == a){
        b::substitute(xs.tail,a,b)
    }else{
      xs.head :: substitute(xs.tail,a,b)
    }
  }else{
    Nil
  }
}
substitute(List(1,2,3,2,4,3,2),2,9)
substitute(List(1,2,3,2,4,3,2),8,9)