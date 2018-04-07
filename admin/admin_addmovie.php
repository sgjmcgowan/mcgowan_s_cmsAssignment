<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);

	require_once('phpscripts/config.php');

	$tbl="tbl_genre";
	$genQuery = getAll($tbl);

	if(isset($_POST['submit'])){
			$movieTitle = $_POST['movieTitle'];
			$movieCover = $_FILES['movieCover'];
			$movieYear = $_POST['movieYear'];
			$movieRuntime = $_POST['movieRuntime'];
			$movieStory = $_POST['movieStory'];
			$movieTrailer = $_FILES['movieTrailer'];
			$genre = $_POST['genList'];

			$uploadMovie = addMovie($movieTitle, $movieCover, $movieYear, $movieRuntime, $movieStory, $movieTrailer, $genre);
			$message = $uploadMovie;
		}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Add A Film</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div>
	<h1>Add another Akira Kurosawa film if you've seen it.</h1>
	<a href="../index.php">Return</a>
	<?php
	if(!empty($message)){echo $message;} ?>
	<form action="admin_addmovie.php" method="post" enctype="multipart/form-data">
		<label>Title</label>
		<input type="text" value="" name="movieTitle"><br><br>
		<label>Cover Image</label>
		<input type="file" value="" name="movieCover"><br><br>
		<label>Year</label>
		<input type="text" value="" name="movieYear"><br><br>
		<label>Runtime</label>
		<input type="text" value="" name="movieRuntime"><br><br>
		<label>Trailer</label>
		<input type="file" value="" name="movieTrailer"><br><br>
		<label>Storyline</label>
		<textarea type="text" value="" name="movieStory"></textarea><br><br>
		<select name="genList">
			<option value="">Select a Genre</option>
		<?php
			while($row = mysqli_fetch_array($genQuery)){
				echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
			}
		?>
	</select><br><br><br>
		<button type="submit" name="submit">Add Movie</button>
	</form>
</div>
</body>
</html>
