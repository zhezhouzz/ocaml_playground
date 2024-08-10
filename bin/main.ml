let[@rty] foo =
  let x = (true : int) in
  (v > 3 : int)

external ( + ) : int -> int -> bool = "+"

let foo x = x + 2;;

foo 1
