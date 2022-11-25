type 'a table = Nil | Ticket of 'a Lazy.t * 'a table
                  | OpenTicket of 'a * 'a table ;;

type prizes = Nothing | Prize of string | Money of int 
                        | Luck of string;;

let prize = ["Miś";"Komputer";"Zabawka";"Obiad";"Rower";"Pistolet"];;
let money = [10;20;30;40;50;100];;
let prizeGenerator = function () ->
    1;;

let rec tableGenerator n=
  let i = (Random.int(100) mod 4) in
  match (n,i) with
  | (0,_) -> Nil
  | (_,0) -> Ticket(lazy(Prize(List.nth prize (Random.int(5)))),tableGenerator (n-1))
  | (_,1) -> Ticket(lazy(Money(List.nth money (Random.int(5)))),tableGenerator (n-1))
  | (_,2) -> Ticket(lazy(Nothing),tableGenerator (n-1))
  | (_,_) -> Ticket(lazy(Luck("?")),tableGenerator (n-1));;

let rec print tb= 
match tb with
| Ticket(_,tl) -> Luck("?")::print tl
| OpenTicket(t,tl) -> t::print tl
| Nil -> [];;

let luckyTicket =
  let n = Random.int(2) in
  if n=0 then Prize(List.nth prize (Random.int(5)))
  else if n=1 then Money(List.nth money (Random.int(5)))
  else Nothing;;

let rec buyTicket tb n = 
  match (n,tb) with
  | (1,Ticket(lazy(Luck(str)),tl)) -> OpenTicket(Luck("?"),buyTicket tl (n-1))
  | (1,Ticket((lazy(t)),tl)) -> OpenTicket(t,buyTicket tl (n-1))
  | (1,OpenTicket(Luck("?"),tl)) -> OpenTicket(luckyTicket, buyTicket tl (n-1))
  | (_,OpenTicket(t,tl)) -> OpenTicket(t,buyTicket tl (n-1))
  | (_,Ticket(_ as tic,tl)) -> Ticket(tic,buyTicket tl (n-1))
  | (_,Nil) -> Nil;;

let t1 = tableGenerator 5;;
print t1;;
let t2 = buyTicket t1 1;;
print t2;;
let t3 = buyTicket t2 2;;
print t3;;
let t4 = buyTicket t3 3;;
print t4;;
let t5 = buyTicket t4 4;;
print t5;;
let t6 = buyTicket t5 5;;
print t6;;
let t7 = buyTicket t6 5;;
print t7;;