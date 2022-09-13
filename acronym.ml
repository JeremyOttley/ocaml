let is_lower_case = function
  'a' .. 'z' -> true
  | _ -> false

let is_letter = function
  'a' ..'z' | 'A' .. 'Z' -> true
  | _ -> false
