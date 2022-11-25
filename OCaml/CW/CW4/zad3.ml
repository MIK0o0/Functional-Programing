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
let valueOfNode= function
  Empty -> []
  | Node(v,l,r) -> [v];;

let breadthBT bt = 
  let rec breadthHelp bt = 
    match bt with
    Empty -> []
    | Node(v,l,r) -> (valueOfNode l ) @ (valueOfNode r) @ (breadthHelp l) @ (breadthHelp r) in

  (valueOfNode bt) @ (breadthHelp bt);;

breadthBT tt;;


