
(* val to_pig_latin : string -> string *)
let to_pig_latin (word: string): string =

  let is_vowel = function
    | 'a' | 'e' |'i' | 'o' | 'u'
    | 'A' | 'E' | 'I' | 'O' | 'U' -> true
    | _ -> false in

  let rest = String.sub word 1 (String.length word - 1) in
  let first = String.make 1 word.[0] in
  if (is_vowel word.[0]) then word ^ "yay" 
  else rest ^ first ^ "ay"
