(* val reverse_string : string -> string *) 
 let reverse_string s =
     let rec helper i =
       if i >= String.length s then "" else (helper (i+1))^(String.make 1 s.[i])
     in
       helper 0

(* val is_palindrome : string -> bool *) 
let is_palindrome s =
  s = (reverse_string s)
