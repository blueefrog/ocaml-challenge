

let parrot_trouble p t =
  match p with
  |_ when t<0 || t> 23 -> None
  |true when t<7 || t>20 -> Some true
  |true -> Some false
  |false -> Some false;;