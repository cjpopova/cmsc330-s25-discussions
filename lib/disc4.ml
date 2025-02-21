let counter = ref 0
let next = fun () -> counter := !counter + 1 ; !counter