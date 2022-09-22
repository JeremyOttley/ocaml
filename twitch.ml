Printf.printf "Please enter a channel: "


let getChannel = 
  let channel () = read_line()
  print_string "Hello %s\n" name

getChannel

(* does this work? *)
let result = executeProcess "streamlink" "--twitch-low-latency" (Printf.sprintf "https://www.twitch.tv/%s" channel) "best"

printfn "Exit code: %d" result.ExitCode
printfn "StdOut: %s" result.StdOut


