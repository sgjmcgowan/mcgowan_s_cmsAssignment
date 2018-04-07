<?php

function single_edit($tbl,$col,$id) {
  $result = getSingle($tbl, $col, $id);
  $getResult = mysqli_fetch_array($result);
  // echo mysqli_num_fields($result);

  echo "<form action='phpscripts/editall.php' method='post'>";
  echo "<input class='hidden' name='tbl' value='{$tbl}'>";
  echo "<input class='hidden' name='col' value='{$col}'>";
  echo "<input class='hidden' name='id' value='{$id}'>";

  for($i=0; $i<mysqli_num_fields($result); $i++){
    $dataType = mysqli_fetch_field_direct($result, $i);
    $fieldname = $dataType -> name;
    $fieldType = $dataType -> type;
  //  $id = $dataType -> id;

    if($fieldname != $col) {
      echo "<label class='inputBar'>{$fieldname}</label><br>"; // Use ajax to remove underscore from name to create Label title for final form.
      if($fieldType != "252" && $fieldname != "movies_cover" && $fieldname != "movies_clip") {
        echo "<input type='text' name='{$fieldname}' value='{$getResult[$i]}'><br><br>";
      } elseif($fieldname === "movies_cover") {
        echo "<input type='file' name'{$fieldname}' placeholder='{$getResult[$i]}'><br>
              <img src='../images/{$getResult[$i]}' alt={$getResult[$i]}<br><br>";
      } elseif($fieldname === "movies_clip"){
        echo "<input type='file' name'{$fieldname}' placeholder='{$getResult[$i]}'><br>
        <video controls>
					<source src=\"../video/{$getResult[$i]}\" type='video/mp4'>
				</video><br><br>";
      } else {
        echo "<textarea name='{$fieldname}'>{$getResult[$i]}</textarea><br><br>";
      }
    }

  }
  echo "<button type='submit' name='submit'>Save Update</button><br><br>";
  echo "<button onclick=\"return confirm('Are You Sure?')\"><a href=\"phpscripts/caller.php?caller_id=delete&id='26'\">Delete this Film</a></button>";
  echo "</form>";
}

 ?>
