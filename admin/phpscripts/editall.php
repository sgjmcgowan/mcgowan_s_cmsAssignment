<?php

  include('connect.php');

  $tbl = $_POST['tbl'];
  $col = $_POST['col'];
  $id = $_POST['id'];
  unset($_POST['tbl'], $_POST['col'], $_POST['id'], $_POST['submit']);

  // echo count($_POST);

  $num = count($_POST);
  $count = 0;
  $qstring = "UPDATE {$tbl} SET ";

  foreach($_POST as $key => $value) {
    $count++;
    if($count != $num) {
      $qstring .= $key."='".htmlspecialchars($value, ENT_QUOTES)."',";
    }else{
      $qstring .= $key."='".htmlspecialchars($value, ENT_QUOTES)."' ";
    }
  }

  $qstring .= "WHERE {$col}={$id}";

  echo $qstring;

  $updatequery = mysqli_query($link, $qstring);
  if($updatequery) {
    header("Location:../../index.php");
  } else {
    echo "THIS LITERALLY DID NOT COMPUTE";
  }

  mysqli_close($link);

?>
