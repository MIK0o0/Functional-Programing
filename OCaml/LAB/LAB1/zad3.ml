let rec substitute(xs,a,b) = (
if xs = [] then []
else
    if List.hd xs = a then 
      b :: substitute( List.tl xs ,a ,b)
    else
      List.hd xs :: substitute( List.tl xs ,a ,b)
);;
substitute([1;2;3;2;4;3;2],2,9)