let count (word: string): int =

    let is_vowel = function
        'a' | 'e' | 'i' | 'o' | 'u' | 'y' -> true
        | _ -> false

    word |> String.to_seq |> Seq.filter (fun c -> is_vowel c) |> Array.of_seq
         |> Array.length
