let rec sumProd xs =
  match xs with
   h::t -> let (s,p)= sumProd t 
   in (h+s,h*p) 
   | [] -> (0,1);; 

let sumProd'= 
   List.fold_left (fun (a,b) x -> (a+x,b*x)) (0,1);;

  sumProd' [1;2;3;4];;