let mux2_1(s0:bool)(a:bool)(b:bool):
bool= s0 && a || (not s0) && b

let mux2_2(s0:bool)(a:bool)(b:bool):
bool= if s0 then a else b

let mux2_3(s0:bool)(a:bool)(b:bool):
bool=
  match s0 with
  | true-> a
  | false-> b
;;

assert (mux2_1 true true false=true);;
assert (mux2_1 false true false=false);;
assert (mux2_1 true false false=false);;
assert (mux2_1 false false false=false);;

let mux4(s1:bool)(s0:bool)(a0:bool)(a1:bool)(a2:bool)(a3:bool):
bool=;;


assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;