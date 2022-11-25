let rec quicksortGood = function
 [] -> []
 | [x] -> [x]
 | x::xs -> let small = List.filter (fun y -> y < x ) xs
 and large = List.filter (fun y -> y >= x ) xs
 in quicksortGood small @ x::(quicksortGood large);;

 
 quicksortGood[4;1;3;2;5];;


 let rec quicksort = function
 [] -> []
 | [x] -> [x]
 | xs -> let small = List.filter (fun y -> y < List.hd xs ) xs
 and large = List.filter (fun y -> y >= List.hd xs ) xs(*Nie usuówamy nigdzie głowy i jest np cały czas [4,5],[4,5] itd*)
 in quicksort small @ quicksort large;;

 let rec quicksort' = function
 [] -> []
 | x::xs -> let small = List.filter (fun y -> y < x ) xs
 and large = List.filter (fun y -> y > x ) xs(*Brak większy równy*)
 in quicksort' small @ (x :: quicksort' large);;

 quicksort'[4;1;3;3;2;5];;
