let nand1(a:bool)(b:bool):
bool=not(a&&b)

let nand2 (a:bool)(b:bool):
bool = 
if a
  then (* a is true *)
    (if b
      then (*b is true*) false
    else true)
  else (* a is false*)
    false


let nand2 (a:bool)(b:bool):
bool =
  match (a,b) with
  | (true, true) -> false
  | _ -> true