type 'a lBT = LEmpty | LNode of 'a * (unit ->'a lBT) * (unit -> 'a lBT);;
type 'a llist = LNil | LCons of 'a * 'a llist Lazy.t;;

let rec ltake = function
(0, _) -> []
| (_, LNil) -> []
| (n, LCons(x,lazy xs)) -> x::ltake(n-1,xs);;
  
let lBreadth bt=
  let rec braeadthHelp queue =
    match queue with
    | [] -> LNil
    | LNode(v,l,r)::tl -> LCons(v,lazy(braeadthHelp (tl @ [l()] @ [r()])))
    | LEmpty::tl -> braeadthHelp tl in
  
  braeadthHelp [bt];;

let rec iTree n = LNode(n,(function()->iTree (2*n)),function() -> iTree (2*n+1));;

ltake( 20,(lBreadth (iTree 1)));;