let count (word: string): int =

    let is_vowel c = match c with
        'a' | 'e' | 'i' | 'o' | 'u'
        | 'A' | 'E' | 'I' | 'O' | 'U' -> true
        | _ -> false

    word |> String.to_seq |> Seq.filter (fun c -> is_vowel c) |> Array.of_seq
         |> Array.length
