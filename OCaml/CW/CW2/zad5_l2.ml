let rec initSegment a b = 
  match (a,b) with
  | (h1::t1,h2::t2) when h1 != h2 -> false
  | (h1::t1,h2::t2) -> initSegment t1 t2
  | ([],_) -> true
  | (_,[]) -> false;;

initSegment [1;2;3] [1;2;3;4;5];;
initSegment [1;2;3] [1;7;3;4;5];;
initSegment [] [1;2;3;4;5];;
initSegment [1;2;3] [];;
initSegment [] [];;