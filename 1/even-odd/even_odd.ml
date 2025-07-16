let is_even n=
  match n with
  |_ when (n mod 2) = 0 -> true
  |_ -> false;;
  
let win a b=
  match (a,b) with
  |(_,_) when (a<1 || a>5) && (b<1 || b>5) -> 0
  |(_,_) when (a<1 || a>5) -> -1
  |(_,_) when (b<1 || b>5) -> 1
  |(_,_) -> if is_even (a+b) then 1 else -1;;

