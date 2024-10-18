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

let mux4_1(s1:bool)(s0:bool)(a0:bool)(a1:bool)(a2:bool)(a3:bool):
bool=
mux2_1 s0
  (*s1=1*)
  (mux2_1 s1
      (*s0=1*)a3
      (*s0=0*)a2)
  (*s1=0*)
  (mux2_1 s1
  (*s0=1*)a1
  (*s0=0*)a0);;

assert(mux4_1 false false false true false true = false);;
assert(mux4_1 false true false true false true = true);;
assert(mux4_1 true false false true false true = false);;
assert(mux4_1 true true false true false true = true);;


let mux4_2(s1:bool)(s0:bool)(a0:bool)(a1:bool)(a2:bool)(a3:bool):
bool=
mux2_2 s0
  (*s1=1*)
  (mux2_2 s1
      (*s0=1*)a3
      (*s0=0*)a2)
  (*s1=0*)
  (mux2_2 s1
  (*s0=1*)a1
  (*s0=0*)a0);;

assert(mux4_2 false false false true false true = false);;
assert(mux4_2 false true false true false true = true);;
assert(mux4_2 true false false true false true = false);;
assert(mux4_2 true true false true false true = true);;

let mux4_3(s1:bool)(s0:bool)(a0:bool)(a1:bool)(a2:bool)(a3:bool):
bool=
mux2_3 s0
  (*s1=1*)
  (mux2_3 s1
      (*s0=1*)a3
      (*s0=0*)a2)
  (*s1=0*)
  (mux2_3 s1
  (*s0=1*)a1
  (*s0=0*)a0);;

assert(mux4_3 false false false true false true = false);;
assert(mux4_3 false true false true false true = true);;
assert(mux4_3 true false false true false true = false);;
assert(mux4_3 true true false true false true = true);;