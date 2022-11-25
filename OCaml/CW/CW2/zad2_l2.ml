let rec fib n= 
  if n = 0 then 0
  else if n = 1 then 1
  else (fib(n-2)) + (fib(n-1));;

let fibTail n = 
  let rec fibIter n a b = 
    if n = 0 then b
    else fibIter (n-1) (a+b) a in

  fibIter n 1 0;;

fib 42;;
fibTail 42;;