type 'a bt = Empty | Node of 'a * 'a bt * 'a bt;;

let tt = Node(1,
Node(2,
Node(4,
Empty,
Empty
),
Empty
),
Node(3,
Node(5,
Empty,
Node(6,
Empty,
Empty
)
),
Empty
)
);; 
let internalPath bt =
  let rec internal n res lvl =
  match n with
      Empty -> res
      | Node(v, l, r) -> internal l (internal r (res+lvl) (lvl+1)) (lvl+1) in
  internal bt 0 0;;

let externalPath bt =
  let rec extern n res lvl =
  match n with
      Empty -> res + lvl
      | Node(v, l, r) -> extern l (extern r res (lvl+1)) (lvl+1) in
  extern bt 0 0;;

internalPath tt;;