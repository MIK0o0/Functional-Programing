type snapshot = Create of string | Append of string*int | Delete of int * int
                | Insert of int * int | AppendToEnd of string;;
type snapTree = Snap of snapshot * snapTree| Empty;;

let append strMain strToApp i =
  let length = String.length strMain in
  if i>length || i<0 then raise (Invalid_argument "String.sub / Bytes.sub":exn)
  else
    if i = 0 then strToApp^strMain
    else if i = length then strMain^strToApp else
    let rec appendHelp n isAppend=
      if (n = length && isAppend=0)then strToApp
      else if n = length then ""
      else if n=i then strToApp^ (String.make 1 strMain.[n])^(appendHelp (n+1) 1)
      else (String.make 1 strMain.[n])^(appendHelp (n+1) isAppend) in
    
    appendHelp 0 0;;

let split str len= 
  let rec splitHelp n=
    if n<len then (String.make 1 str.[n])::splitHelp(n+1)
    else [] in
  splitHelp 0;;

let delete str i j =
  let length = String.length str in
  if j>length || i<0 then raise (Invalid_argument "String.sub / Bytes.sub":exn)
  else
  let list = split str length in
  let rec deleteHelp l n= 
    match l with
    [] -> ""
    | hd::tl -> if (n >= i && n<=j) then deleteHelp tl (n+1)
                else hd^(deleteHelp tl (n+1)) in
  
  deleteHelp list 0;;

let insert str i j = 
    let length = String.length str in
    if j>length || i<0 then raise (Invalid_argument "String.sub / Bytes.sub":exn)
    else
    let toInsert = (String.make 1 str.[i]) in
    
      let rec insertOne i j n =
          if n=length then ""
          else if n=i then insertOne i j (n+1)
          else if (j>i && n=j+1)  then (String.make 1 str.[n])^toInsert ^ insertOne i j (n+1)
          else if (j<i && n=j) then toInsert ^(String.make 1 str.[n])^ insertOne i j (n+1)
          else (String.make 1 str.[n])^ insertOne i j (n+1) in
  
      insertOne i j 0 ;;

let review st = 
  let rec build st =
  match st with
  Empty -> ""
  | Snap(v,next) -> match v with
                  | Create(str) -> if next = Empty then str else raise (Invalid_argument("snapshot fail"))
                  | Append(str,i) -> append (build next) str i 
                  | AppendToEnd(str) -> (build next)^str
                  | Insert(i,j) -> insert (build next) i j  
                  | Delete(i,j) -> delete (build next) i j  
                  in

  try Some(build st) with exn -> None ;;

let sample = Snap(AppendToEnd(" kota"),Snap(Append(" ma",3),Snap(Create("Ala"),Empty)));;
let sample2 = Snap(Insert(3,5),Snap(Insert(3,5),Snap(Insert(3,5),Snap(Create("Wladyslaw"),Empty))));;
let sample3 = Snap(Append("Piekna ",0),Snap(AppendToEnd(" duzego"),sample));;
let sample4 = Snap(Delete(3,6),Snap(Create("0123456789"),Empty));;
let sample5 = Snap(AppendToEnd("111"),Snap(AppendToEnd("mam"),Snap(Create("222"),Empty)));;
let sample6 = Snap(Insert(8,0),Snap(Insert(8,0),Snap(Insert(8,0),sample5)));;
let sample7 = Snap(Delete(3,5),sample6);;
let sample8 = Snap(Delete(1,999),sample);;
let sample9 = Snap(Create("test"),sample);;

review sample;;
review sample2;;
review sample3;;
review sample4;;
review sample5;;
review sample6;;
review sample7;;
review sample8;;
review sample9;;