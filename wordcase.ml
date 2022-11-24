let string_to_list (s: string): string list =
	String.split_on_char ' ' s

let normalize_string (s: string): string list =
	s |> string_to_list 
	  |> List.map String.lowercase_ascii

let to_lower (s: string) = 
	s |> normalize_string 
	  |> String.concat " "
	  |> print_endline


let to_upper (s: string) = 
	s |> normalize_string
	  |> List.map String.uppercase_ascii
	  |> String.concat " "
	  |> print_endline


let to_caps (s: string) = 
	s |> normalize_string 
	  |> List.map String.capitalize_ascii
	  |> String.concat " "
	  |> print_endline

let () =
	begin
		let speclist = [("-l", Arg.String (to_lower), "Lowercase string");
		("-u", Arg.String (to_upper), "Uppercase string");
		("-t", Arg.String (to_caps), "Capitalize string");
		]
	in let usage_msg = "Change the case of the input text:"
	in Arg.parse speclist print_endline usage_msg;
	end
