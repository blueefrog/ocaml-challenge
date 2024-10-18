let f1(a:int):
int= 
if a<0
  then -a
else a


let f2(a:int):
int= 
match a with
| a when a>0 -> a
| a -> -a