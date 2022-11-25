let area a b f n = 
  let dx = (b-.a)/.n in
  let rec listFill i = if i<=n then a+.(i*.dx)::listFill (i+.1.) else [] 
  and sumlist x= List.fold_left (+.) 0. x 

  and areaHelp a b f n xs =
  let st = sumlist (List.map f (List.map (fun x -> x-.(dx/.2.)) xs))
  and s = sumlist (List.map f xs) -. (a+.(n*.dx)) in
  (dx/.6.)*.((f a)+.(f b) +. (2.*.s) +. (4.*.st)) in

  areaHelp a b f n (listFill 1.);;

let f = fun x -> x*.x +. 2.*.x;;
let g = fun x -> x*.x*.9. +. 7.;;
let h = fun x -> (g x) +. (f x);;

area 0. 1. f 1000.;;
area 2. 20. f 1000.;;

area 0. 1. g 1000.;;
area 0. 1. h 1000.;;

area 1. 5. f 1000.;;
area 5. 10. f 1000.;;
area 1. 10. f 1000.;;

area 1. 1. f 1000.;;
area 5. 1. f 1000.;;

area 0. 1. sin 1000.;;



