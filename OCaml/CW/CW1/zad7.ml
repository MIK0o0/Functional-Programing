let rec lg(n) = (
  if n <= 2 then 1
  else
    lg(n/2) + 1
);;

let rec rekurencja(n)= (
if n = 1 then 1
else
  lg(n) + rekurencja(n/2)
);;

rekurencja(4);;
rekurencja(8);;
rekurencja(32);;
rekurencja(64);;
rekurencja(1024);;
