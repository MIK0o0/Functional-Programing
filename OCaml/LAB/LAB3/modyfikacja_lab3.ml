let reverse xs =
   List.fold_left (fun list x -> x::list) [] xs;;

reverse[1;2;3;4];;
reverse[1];;
reverse[];;
reverse["Ala";"ma";"kota"];;

