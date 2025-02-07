let abs x = if x < 0 then (-1)*x else x

let rec remove_all lst x = 
  match lst with 
  | [] -> []
  |  h :: t -> if h == x then remove_all t x else h :: remove_all t x


let rec index_of_helper lst x idx = 
  match lst with 
  | [] -> -1
  | h :: t -> if h == x then idx else index_of_helper t x (idx+1)

let index_of lst x = index_of_helper lst x 0