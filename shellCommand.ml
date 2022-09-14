let result = executeProcess "ls" "-a"

printfn "Exit code: %d" result.ExitCode
printfn "StdOut: %s" result.StdOut
