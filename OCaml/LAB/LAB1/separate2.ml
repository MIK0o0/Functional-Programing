let separate list = 
  if list = [] then ([],[])
  else
    let rec test list last = 
      if list = [] then [[];[]]
      else if last <= List.hd list then [List.hd list :: List.hd (test (List.tl list) (List.hd list));List.hd (test (List.tl list) (List.hd list))]
      else [[];List.hd list :: List.hd (List.tl (test (List.tl list) (last)))] in
  let pom = test list (List.hd list) in 
  (List.hd pom,List.tl pom);;

  
  separate [1; 2; 3; 5; 7; 4; 9] ;;
  separate [1;2;7;5;6;9];;
  separate [5;1;2;3;4];;

  separate [1;2;3;9;9;9];;

  separate [9;9;9;4;5;6;7;8];;
  separate [];;