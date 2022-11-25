let roots = fun a b c ->
let del = (b*b)-(4*a*c) in
if del = 0 then 1
else if del < 0 then 0
else 2;;

roots 1 4 4;;
roots 1 4 20;;
roots 1 20 4;;