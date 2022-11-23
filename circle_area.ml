(* Exercise 1: Write a function named circle_area
it will take in argument 'r' (radius) and returns
the area of the circle *)

type area = float
type radius = float

(* val circle_area : radius -> area = <fun> *)
let circle_area (radius: radius): area =
	Float.pi *. (radius *. radius)
