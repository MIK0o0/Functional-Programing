let curry3 = fun f x y z -> f(x,y,z);;
let uncurry3 = fun f (x,y,z) -> f x y z;;

let curry3' = function f ->  function x -> function y -> function z -> f(x,y,z);;
let uncurry3' = function f ->  function (x,y,z) -> f x y z;;