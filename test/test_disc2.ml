open OUnit2
open Discussions.Disc2

let test_abs _ = 
  assert_equal 1 (abs 1) ~msg:"test_abs (1)";
  assert_equal 2 (abs 2) ~msg:"test_abs (2)";
  assert_equal 1 (abs (-1)) ~msg:"test_abs (3)";
  assert_equal 2 (abs (-2)) ~msg:"test_abs (4)";
  assert_equal 0 (abs (0)) ~msg:"test_abs (5)"


  let suite =
    "public" >::: [
      "abs" >:: test_abs;
      ]
  
  let _ = run_test_tt_main suite