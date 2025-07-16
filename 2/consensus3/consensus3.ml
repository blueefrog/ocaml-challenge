
let consensus3 (f0, f1, f2) n=
  let y0 = f0 n in
  let y1 = f1 n in
  let y2 = f2 n in

  if y0=y1 || y0=y2 then Some(y0) else if y1=y2 then Some(y1) else None
