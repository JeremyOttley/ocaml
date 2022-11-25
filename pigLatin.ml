let to_pig_latin (word: string): string =

    let is_vowel = function
        | 'a' | 'e' |'i' | 'o' | 'u'
        | 'A' | 'E' | 'I' | 'O' | 'U' -> true
        | _ -> false
        
    if (is_vowel word.[0]) do
        word ^ "yay"
    else
        (* (rest word) ^ (word.[0] ^ "ay") *)
    
