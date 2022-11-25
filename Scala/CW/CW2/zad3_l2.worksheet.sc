
def root3(a:Double,e:Double):Double = 
    def f_abs(a:Double):Double = 
        if a>=0 then a else -a
    

    def sqr(a:Double,i:Int,s:Double,e:Double): Double = 
        if f_abs((s*s*s) - a) < e * f_abs(a) then s
        else
            i match
                case 0 if a > 1 => sqr(a,i+1,a/3,e)
                case 0  => sqr(a,i+1,a,e)
                case _ => sqr(a,i+1,s+(a/(s*s)-s)/3,e)

        
    
    sqr(a,0,0,e)

root3(9,1e-15)
root3(27,1e-15)
root3(1,1e-15)
root3(65874,1e-15)

            