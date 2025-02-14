let list_add x nums = 
  List.map (fun e -> e + x) nums

(* Solution from README*)
let  mold f lst = 
  List.rev (List.fold_left (fun acc e ->  (f e) :: acc) []  lst)

  (* Alternate solution using fold_left, but using concat operator (@) to handle reverse)*)
  let  mold_concat f lst = 
  List.fold_left (fun acc e ->  acc @ [f e]) [] lst

(* Second solution from README *)
  let mold_r f lst = 
    List.fold_right (fun e acc ->  (f e) :: acc) lst []