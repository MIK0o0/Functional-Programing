
 type 'a graph = Graph of ('a -> 'a list);;

 let g = Graph
(function
0 -> [3]
| 1 -> [0;2;4]
| 2 -> [1]
| 3 -> []
| 4 -> [0;2]
| n -> failwith ("Graph g: node "^string_of_int n^" doesn't exist")
);;


let depthSearch (Graph gr) st =
  let rec searchHelp visited queue = 
    match queue with
    [] -> List.rev visited
    | h::t -> if List.mem h visited then searchHelp visited t else searchHelp (h::visited) ((gr h)@t) in

  searchHelp [st] (gr st);;

depthSearch g 4;;
