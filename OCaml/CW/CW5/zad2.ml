type 'a llist = LNil | LCons of 'a * 'a llist Lazy.t;;

let rec ltake = function
(0, _) -> []
| (_, LNil) -> []
| (n, LCons(x,lazy xs)) -> x::ltake(n-1,xs);;


let lfib = 
  let rec lfibIn(p, n) =
      LCons(p+n, lazy(lfibIn(n, p+n))) in
  LCons(1, lazy(LCons(1, lazy(lfibIn(1, 1)))));;
  
ltake(15, lfib);;