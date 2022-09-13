Printf.printf "What's your name: "
let userInput () = read_line()

let greet name = 
  print_string "Hello %s\n" userInput

greet userInput
