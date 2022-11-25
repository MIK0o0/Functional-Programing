let find list ele = 

  let rec findRec list ele n =
    match (list,ele) with
    | ([],_)        -> []
    | (hd :: tl,x) when hd = x -> n :: findRec tl ele (n+1)
    | (hd :: tl,x) ->  findRec tl ele (n+1) in

  findRec list ele 0;;

find [1;2;3;2] 2;;
find [1;2;3;4] 8;;
find [] 2;;
find [1;1;1;1;1;1;1] 1;;

let find123 = find [1;2;3];;
find123 3;;
let find787878 = find [7;8;7;8;7;8];;
find787878 8;;