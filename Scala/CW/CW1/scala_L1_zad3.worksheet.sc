def replicate[A] (x: A, n: Int): List[A] = {
  if(n > 0){
    x :: replicate(x,n-1)
  }else{
    Nil
  }
}
replicate("la",3)