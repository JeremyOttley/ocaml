open Str

let isbn = "978-1-4780-2453-8"

let regx = Str.regexp "-" in
Str.global_replace regx "" isbn
(*"9781478024538"*)
