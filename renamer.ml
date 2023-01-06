open Str

let path = "C:/Users/jottley/ml/renamer/images/"

let isImage file =
    match Filename.extension(file) with
    | ".jpg" | ".png" | ".bmp" | ".jpeg" -> true
    | _-> false

let imageList = 
  Sys.readdir path
  |> Array.to_list
  |> List.filter (fun x -> isImage x)

let regx = Str.regexp {|"upscayl_4x_realesrgan-x4plus"|}
Str.global_replace regx "" "Screenshot_20220930_221244_upscayl_4x_realesrgan-x4plus.png"

imageList |> List.

(* List.to_seq [1; 2; 3] |> Seq.filter (fun x -> x mod 2 = 0) |> List.of_seq *)

(* let listLamba l f =
    List.to_seq l
    |> Seq.filter f
    |> List.of_seq *)
