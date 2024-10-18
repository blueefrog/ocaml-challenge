let max_nat : int->int->int=
  fun x y ->
    match x, y with
    |n1, n2 when n1 >= 0 && n2 >=0 ->
      if n1 >= n2 then n1 else n2
    | _ ->
      (*uno degli argomenti non è un numero naturale*)
      failwith "not a nat"