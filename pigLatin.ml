(* let to_pig_latin (word: string): string = *)

let is_vowel = function
  | 'a' | 'e' |'i' | 'o' | 'u'
  | 'A' | 'E' | 'I' | 'O' | 'U' -> true
  | _ -> false

let pig_latin s =
  let rest = String.sub s 1 (String.length s - 1) in
  let first = String.make 1 s.[0] in
  if (is_vowel s.[0]) then s ^ "yay" 
  else rest ^ first ^ "ay"
