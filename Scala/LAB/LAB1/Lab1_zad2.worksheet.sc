def roots(a:Double,b:Double,c:Double) = {
    val del = (b*b)-(4*a*c)
  if(del == 0) {
    1
  }else if(del <0){
    0
  }else{
    2
  }
}
roots(1,4,4)
roots(1,4,20)
roots(1,20,4)

