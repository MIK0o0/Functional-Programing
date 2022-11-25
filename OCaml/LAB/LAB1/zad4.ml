let rec swap2(list)=(
  if list = [] then []
  else 
    if List.tl list != [] then
      List.hd (List.tl list) :: List.hd list :: swap2(List.tl( List.tl list))
    else
      List.hd list :: swap2(List.tl list)
);;
swap2([1;2;3;4;5;6])