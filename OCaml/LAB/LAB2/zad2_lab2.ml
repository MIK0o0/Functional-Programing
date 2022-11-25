
let rec split2Rec list = 
  match list with
  | [] -> ([],[])
  | [hd] -> ([hd],[])
  | hd1 :: hd2:: tl -> 
    let (a,b) = split2Rec(tl) in
    (hd1::a,hd2::b);;

split2Rec[1;2;3;4];;
split2Rec[];;
split2Rec[1;2;3];;
split2Rec["1";"2";"3";"4";"5"];;
split2Rec[1;2;3;4;5;6;7;7;13;8;9;0];;


let split2Tail list = 
  let rec split2TailHelp list listRet1 listRet2 =
    match list with
    | [] -> (listRet1,listRet2)
    | [hd] -> split2TailHelp [] (hd::listRet1) listRet2
    | hd1:: hd2::tl -> split2TailHelp tl (hd1::listRet1) (hd2::listRet2)
  in
  split2TailHelp list [] [];;

split2Tail[1;2;3;4];
split2Tail[1;2;3;4;5];;
split2Tail[];;

split2Tail[1;2;3];;

split2Tail["1";"2";"3";"4";"5"];;

split2Tail[1;2;3;4;5;6;7;7;13;8;9;0];;