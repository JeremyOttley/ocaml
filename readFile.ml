let read_file_to_string (path: string): string =
  let rec read_stream stream =
    try
      let line = input_line stream in
      line :: (read_stream stream)
    with End_of_file ->
      []
  in
  let stream = open_in path in
  String.concat "\n" (read_stream stream)
