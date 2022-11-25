def fib(n:Int):Int ={
    if n == 0 then 0
    else if n == 1 then 1
    else fib(n-2) + fib(n-1)
}

def fibTail(n : Int) = {
    def fibIter(n:Int,a:Int,b:Int):Int={
        if n == 0 then b
        else fibIter(n-1,a+b,a)
    }
    fibIter(n,1,0)
}

fib(42)
fibTail(42)