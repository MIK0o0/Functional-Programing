let root3 a e =
  let rec sqr a i s e =
    if abs_float((s*.s*.s) -. a) < e *.  abs_float(a) then s
    else
      match i with 
        0 when a > 1. -> sqr a (i+1) (a/.3.) e
        | 0 -> sqr a (i+1) a e
        | _ -> sqr a (i+1) (s+.(a/.(s*.s)-.s)/.3.) e  in 

  sqr a 0 0. e ;;

  root3 9. 1.0e-15;;
  root3 27. 1.0e-15;;
  root3 1. 1.0e-15;;
  root3 65874. 1.0e-15;;