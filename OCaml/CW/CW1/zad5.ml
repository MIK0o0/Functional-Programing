let palindrome(xs) = (
  List.rev xs = xs
);;

palindrome(["a";"l";"a";]);;
palindrome(["a";"l";"a";"o"]);;