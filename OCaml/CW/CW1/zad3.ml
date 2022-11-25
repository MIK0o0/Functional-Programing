let rec replicate x n  = (
if n>0 then
  x :: replicate x (n-1)
else
  []
);;

replicate "la" 3;;