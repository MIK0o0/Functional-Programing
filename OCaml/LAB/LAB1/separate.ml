let separate list = 
  if list = [] then ([],[])
  else
  let rec asc list last = 
    if list = [] then []
    else if last <= List.hd list then List.hd list :: asc (List.tl list) (List.hd list)
    else asc (List.tl list) (last) in

  let rec other list last = 
    if list = [] then []
    else if last > List.hd list then List.hd list :: other (List.tl list) (last)
    else other (List.tl list) (List.hd list)in
    
  (asc list (List.hd list),other list (List.hd list));;

  separate [1; 2; 3; 5; 7; 4; 9] ;;
  separate [1;2;7;5;6;9];;
  separate [5;1;2;3;4];;

  separate [1;2;3;9;9;9];;

  separate [9;9;9;4;5;6;7;8];;
  separate [];;


