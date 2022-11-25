def sumProd(xs:List[Int]) = 
    (xs.foldLeft (0,1))((sum:(Int,Int),x:Int) => (x+sum._1,x*sum._2))