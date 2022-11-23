(* Exercise 1: Write a function named circle_area
it will take in argument 'r' (radius) and returns
the area of the circle *)

type area = float
type radius = float

let circle_area (radius: radius): area =
	Float.pi *. (Float.sqrt radius)
