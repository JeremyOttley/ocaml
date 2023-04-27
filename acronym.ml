module Acronym

  let is_uppercase = function
  'A'..'Z' -> true
  | _ -> false
  
  let string_of_chars chars = 
    let buf = Buffer.create (List.length chars) in
    List.iter (Buffer.add_char buf) chars;
    Buffer.contents buf
    
   
  let abbreviate (s : string): string =
    s |> String.to_seq 
      |> Seq.filter (fun c -> is_uppercase c) 
      |> List.of_seq 
      |> string_of_chars
