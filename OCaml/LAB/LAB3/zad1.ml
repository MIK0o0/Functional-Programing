let rec (>=<) l f =
  match l with
  | [] -> []
  | [hd] -> []
  | hd1::hd2::tl -> (f hd1 hd2) :: (tl >=< f);;

(*
let rec (>=<.) l f =
  let rec operatorHelp l f n =
    match l with
    | [] -> ([],0)
    | [hd] -> ([],1)
    | hd1::hd2::tl -> 
      let pom = operatorHelp tl f 0 in
      ((f hd1 hd2) :: fst pom,snd pom) in

  let temp = operatorHelp l f 0 in
  if snd temp = 1 then [] else fst temp;;
*)

let rec collapse list f = 
  match list with
  | [] -> []
  | [hd] -> [hd]
  | hd1::hd2::tl -> collapse (list>=<f) f;;

let test = fun x y -> x*y;;
let f = fun x y -> x+y;;
[1;2;3;4] >=< test >=< f;;
[1;2;3;4;5]>=< test;;


[]>=< test;;
collapse [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16] test;;
collapse [1;2;3;4;5;6] test;;

