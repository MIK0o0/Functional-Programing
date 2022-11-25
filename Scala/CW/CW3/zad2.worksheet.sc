def curry3[A] = (f:A=>A=>A=>A) => (x:A,y:A,z:A) => f(x)(y)(z)
def uncarry3[A] = (f:(A,A,A)=>A) => (x:A)=>(y:A)=>(z:A) => f(x,y,z)

def curry3_2[A](f:A=>A=>A=>A)(x:A,y:A,z:A) = f(x)(y)(z)
def uncarry3_2[A](f:(A,A,A)=>A)(x:A)(y:A)(z:A) = f(x,y,z)