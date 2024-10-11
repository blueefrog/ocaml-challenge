let xor1(a:bool)(b:bool):
bool= (a||b) && (not(a&&b))

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

let xor2(a:bool)(b:bool):
bool= 