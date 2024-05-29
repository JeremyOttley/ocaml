let small_word (s: string): bool =
  (String.length s) <= 4

let big_or_small (s: string) = match s with
  | s when small_word(s) -> "Big!"
  | s when not (small_word(s)) -> "Small..."
  | _ -> "Error"


