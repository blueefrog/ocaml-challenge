type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

let isLecture d c=
  
  match (c,d) with
  |(ALF, (Tu|Th|Fr)) -> true
  |(LIP, (We|Th)) -> true
  |(_,_)-> false;;
