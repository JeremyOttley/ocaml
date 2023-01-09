let rec loop a f len n i =
  if i < len then
    let x = Array.unsafe_get a i in
    if f x then begin
      let res = loop a f len (n + 1) (i + 1) in
      Array.unsafe_set res n x;
      res
    end else
      loop a f len n (i + 1)
  else
    Array.make n (Array.unsafe_get a 0)

let filter_a f a =
  let len = Array.length a in
  if len = 0 then a else
  loop a f len 0 0
  
(*
Sys.readdir(".") |> filter_a (fun f -> Filename.check_suffix f ".pdf")
*)
