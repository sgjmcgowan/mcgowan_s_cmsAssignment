<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('admin/phpscripts/config.php');
	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = $_GET['filter'];
		$getMovies = filterType($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="admin/css/main.css">
<title>Kurosawa</title>
</head>
<body>
<div>
<h1>KUROSAWA</h1>
	<a href="admin/admin_addmovie.php">Add A Film</a>

<div class="index">
	<?php

		if(!is_string($getMovies)){
			while($row = mysqli_fetch_array($getMovies)){
				echo "<div class='item'>
				<a href=\"details.php?id={$row['movies_id']}\">
				<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
					<h2>{$row['movies_title']}</h2>
					<p>{$row['movies_year']}</p>
					</a>
					<br><br>
					</div>";
			}
		}else{
			echo "<p class=\"error\">{$getMovies}</p>";
		}

	?>
</div>
</div>
</body>
</html>
