type season = Spring | Summer | Autumn | Winter;;

let squirrel_play t s=
  match s with
  |Summer when t<15 || t>35 ->false
  |Summer  -> true
  |_ when t<15 || t>30 ->false
  |_ -> true;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;