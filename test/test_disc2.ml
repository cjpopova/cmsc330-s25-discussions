open OUnit2
open Discussions.Disc2

let test_abs _ = 
  assert_equal 1 (abs 1) ~msg:"test_abs (1)";
  assert_equal 2 (abs 2) ~msg:"test_abs (2)";
  assert_equal 1 (abs (-1)) ~msg:"test_abs (3)";
  assert_equal 2 (abs (-2)) ~msg:"test_abs (4)";
  assert_equal 0 (abs (0)) ~msg:"test_abs (5)" 


let test_remove_all _ =
  assert_equal [2;3] (remove_all [1;2;3;1] 1 ) ~msg:"test_remove_all (1)";
  assert_equal [1;2;3;1] (remove_all [1;2;3;1] 5 ) ~msg:"test_remove_all (2)";
  assert_equal [true] (remove_all [true; false; false] false ) ~msg:"test_remove_all (3)";
  assert_equal [] (remove_all [] 42 ) ~msg:"test_remove_all (4)"

let test_index_of _ =
   assert_equal 0 (index_of [1;2;3;1] 1) ~msg:"test_index_of (1)";
   assert_equal 3 (index_of [4;2;3;1] 1) ~msg:"test_index_of (2)";
   assert_equal 1 (index_of [true; false; false] false) ~msg:"test_index_of (3)";
   assert_equal (-1) (index_of [] 42) ~msg:"test_index_of (4)"

  let suite =
    "public" >::: [
      "abs" >:: test_abs;
      "remove_all" >:: test_remove_all;
      "index_of" >:: test_index_of;
      ]
  
  let _ = run_test_tt_main suite