def area(a:Double,b:Double,f:(Double=>Double),n:Int) =
    val dx = (b-a)/n
    def sumlist(xs:List[Double]) = xs.foldLeft(0.0)((sum, x) => sum + x)

    def areaHelp(a:Double,b:Double,f:(Double=>Double),n:Int,xs:List[Double])=
        val st = sumlist((xs.map(x=>x-(dx/2)).map(f)))
        val s = sumlist(xs.map(f)) - (a+(n*dx))
        (dx/6)*(f(a)+f(b)+2*s+4*st)

    areaHelp(a,b,f,n,for(i<-List.range(1,n)) yield a+(i*dx))

def f = (x:Double) => (x*x+2*x)
def g = (x:Double) => (x*x*9 + 7)
def h = (x:Double) => g(x) + f(x)

area(0,1,f,10000)
area(2,20,f,10000)

area(0,1,g,10000)
area(0,1,h,10000)

area(1,5,f,10000)
area(5,10,f,10000)
area(1,10,f,10000)




