<?php

function addMovie($movieTitle, $movieRuntime, $movieYear, $movieCover, $movieTrailer, $movieStory, $genre){
  include('connect.php');

  if($_FILES['movieCover']['type'] == "image/jpeg" || $_FILES['movieCover']['type'] == "image/jpg" || $_FILES['movieCover']['type'] == "image/png"){
    $target = "../images/{$movieCover['name']}";
    if(move_uploaded_file($_FILES['movieCover']['tmp_name'], $target)){

      $fn = $_FILES['movieCover']['tmp_name'];
      $size = getimagesize($fn);
      $ratio = $size[0]/$size[1]; // figure out ratio of width to height
      if( $ratio > 1) { // if too wide
        $width = 300; //set exact width
        $height = 300/$ratio; // scale height
      } else { // if too tall or a square
        $width = 300*$ratio; // scale width
        $height = 300; // adjust height to exact
      }

      $src = imagecreatefromstring(file_get_contents($fn));
      $dst = imagecreatetruecolor($width,$height);
      imagecopyresampled($dst,$src,0,0,0,0,$width,$height,$size[0],$size[1]);
      imagedestroy($src); // remove orignal upload from memory
      imagepng($dst,$target); // create new png
      imagedestroy($dst); // remove newly created image from memory

      $orig = $target;
      $th_copy = "../images/TH_{$movieCover['name']}";

      if(!copy($orig, $th_copy)){
        echo "Failed to Copy!";
      }
      $size = getimagesize($orig);


      $movieString = "INSERT INTO tbl_movies VALUES(NULL, '{$movieTitle}', '{$movieRuntime}', '{$movieYear}', '{$movieCover['name']}', '{$movieTrailer}', '{$movieStory}')";

      $userQuery = mysqli_query($link, $movieString);

      if($userQuery){
        $qstring = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
        $lastMovie = mysqli_query($link, $qstring);
        $row = mysqli_fetch_array($lastMovie);
        $lastID = $row['movies_id'];

        $genreString = "INSERT INTO tbl_mov_genre VALUES(NULL, {$lastID}, {$genre})";
        $addGenre = mysqli_query($link, $genreString);

        redirect_to("admin_index.php");
      }
    }

  }
    mysqli_close($link);
}

 ?>
