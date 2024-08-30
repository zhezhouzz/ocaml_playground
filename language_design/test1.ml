(* type 'a t = { a : string; b : 'a } [@@deriving accessors] *)
(* type ('a, 'b) typed = { x : 'a; ty : 'b } *)

(* type 't lit = *)
(*   | AC of int *)
(*   | AVar of (('t, string) typed[@free]) *)
(*   | ATu of ('t, 't lit) typed list *)
(*   | AProj of ('t, 't lit) typed * int *)
(*   | AAppOp of ('t, string) typed * ('t, 't lit) typed list *)
(* [@@deriving fv] *)

let fv_of_list f l = List.concat_map f l
let _singleton_list (s : string) = [ s ]

type lit =
  | LBool of bool
  | LInt of int
  | LVar of (string[@free])
  | LPair of lit * lit
  | LTu of lit list
  | LTuAcces of lit * int
  | LAppOp of string * lit list
  | LAppOp' of string * (string[@free]) list
  | LAppOp'' of string * string list
[@@deriving fv]
