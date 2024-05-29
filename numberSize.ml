let small_word (s: string): bool =
  (String.length s) <= 4

let big_or_small (s: string) = match s with
  | s when smallWord(s) -> "Big!"
  | s when not (smallWord(s)) -> "Small..."
  | _ -> "Error"


