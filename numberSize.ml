let bigOrSmall s = match s with
| s when smallWord(s) -> "Big!"
| s when not (smallWord(s)) -> "Small..."
| _ -> "Error"

(* bigOrSmall "Jeremy" *)
