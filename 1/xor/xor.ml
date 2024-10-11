(*b1       | b2
  true       true      false
  true       false     true
  false      true      true
  false      false     false*)



(*let xor1:bool->bool->bool =
  fun b1: b2: ->    altro modo per inizializzare la funzione*)
let xor1(a:bool)(b:bool):
bool= not a && b || a && not b

let xor2(a:bool)(b:bool):
bool= 
if a
  then (*a is true*)
    (if b (*b is true*)
      then false
    else true)
  else (*a is false*)
    (if b (*b is true*)
      then true
    else false)

let xor3(a:bool)(b:bool):
bool= 
    match (a,b) with
    | (true,true) -> false
    | (false, false) -> false
    | (true, false) -> true
    | (false, true) -> true