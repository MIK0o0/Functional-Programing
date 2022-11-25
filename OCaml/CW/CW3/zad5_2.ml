
let rec merge l x y = match (x,y) with 
| ([],_) -> y
| (_,[]) -> x
| (h1::t1, h2::t2) -> 
if l h1 h2 
    then h1::(merge l t1 y)
    else h2::(merge l x t2)
  
  ;;

let rec split x y z = match x with
 | [] -> (y,z)
 | x::resto -> split resto z (x::y);;

let rec mergesort l x = match x with
| ([] | _::[]) -> x
| _ -> let (pri,seg) = split x [] [] 
in merge l (mergesort l pri) (mergesort l seg);;

mergesort (>) [2;6;1;8;765;4;7;347;37;7;7;37;374;65;6;73;6;76;46;7;63;];;

let estimateTime f x =
  let startTime = Sys.time()
  in let fx = f x
  and estimatedTime = int_of_float((Sys.time() -. startTime) *. 1e3)
  in (fx, estimatedTime)
 ;;

 estimateTime (mergesort (>)) [2;6;1;8;765;4;7;347;37;7;7;37;374;65;6;73;6;76;46;7;63;];;