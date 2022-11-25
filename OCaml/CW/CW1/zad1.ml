let rec flatten1(list) = 
  if list = [] then []
  else
    List.hd list @ flatten1(List.tl list)
;;

flatten1([[1;2];[3;4;5];[6;7]]);;