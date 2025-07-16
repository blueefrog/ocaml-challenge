
let is_posfrac x =
  match x with
  |(_,0) -> false
  |(a,b) when a>=0 && b>0 -> true
  |(a,b) when a<=0 && b<0 -> true
  |(_,_) -> false;;


let  compare_posfrac y z =
  if not(is_posfrac y && is_posfrac z) then failwith "booo" else
    match (y,z) with
    |((a,b),(c,d)) when a*d=c*b -> 0
    |((a,b),(c,d)) when a*d<c*b  -> -1
    |((a,b),(c,d)) when a*d>c*b -> 1;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;