
def flip5[A,B,C,D,E](x:(A,B,C,D,E))={
  (x._4,x._5,x._3,x._2,x._1)
}

flip5(1,"2","3",true,4.5)
