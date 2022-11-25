type 'a llist = LNil | LCons of 'a * 'a llist Lazy.t;;
let rec lfrom k = LCons (k, lazy (lfrom (k+1)));;
let rec ltake = function
(0, _) -> []
| (_, LNil) -> []
| (n, LCons(x,lazy xs)) -> x::ltake(n-1,xs);;

let list = ltake( 5,(lfrom 10));;
let irepeat k xs = 
  let rec repeatHelp n xs=
    match (n,xs) with
    | (1,LCons(h,lazy t)) -> LCons(h,lazy(repeatHelp k t))
    | (_,LCons(h,lazy t)) -> LCons(h,lazy(repeatHelp (n-1) xs))
    | (_,LNil) -> LNil in 
  repeatHelp k xs;;

ltake(15,(irepeat 3 (lfrom 10)));;
