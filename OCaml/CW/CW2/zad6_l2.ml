let rec replaceNth a b c= 
  match (a,b) with
  | ([],_)      -> []
  | (h1::t1,0)  -> c::t1
  | (h1::t1,_)  -> h1::replaceNth t1 (b-1) c;;

replaceNth ["o";"l";"a"; "m"; "A"] 1 "s";;
replaceNth ["o";"l";"a"; "m"; "A"] 100 "s";;
