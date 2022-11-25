(* range *)

let rec range a b =
  if a > b then []
  else a :: range (a + 1) b

(* tail recursive range *)

let range a b =
  let rec int_range_rec l a b =
    if a > b then l
    else int_range_rec (b :: l) a (b - 1)
  in (int_range_rec [] a b)
